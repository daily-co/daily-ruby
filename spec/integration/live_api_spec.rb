require 'spec_helper'
require 'securerandom'

# Calls the real Daily API. Skipped unless you ask for it:
#
#   DAILY_API_KEY=... bundle exec rspec --tag integration
#
# Optional: DAILY_TEST_RECORDING_ID=<id> also checks get_recording_info.
#
# Safe to run on a real domain. It only creates one short-lived room named
# daily-ruby-it-<random>, and always deletes it. It never starts a recording
# or a dial-out, never buys a phone number and never changes domain config.
describe 'Daily API (live)', :integration do
  before(:all) do
    WebMock.allow_net_connect!
  end

  after(:all) do
    WebMock.disable_net_connect!(allow_localhost: true)
  end

  # 1.0.x style auth on purpose, so the compat path is what gets tested live.
  def configure_old_style
    Daily.configure do |c|
      c.api_key['sec0'] = ENV.fetch('DAILY_API_KEY')
      c.api_key_prefix['sec0'] = 'Bearer'
    end
  end

  before do
    # --tag integration beats the default exclusion in spec_helper, so skip
    # here too when there is no key.
    skip 'Set DAILY_API_KEY to run integration tests' if ENV['DAILY_API_KEY'].to_s.empty?
    configure_old_style
  end

  describe 'room lifecycle' do
    let(:room_name) { "daily-ruby-it-#{SecureRandom.hex(6)}" }
    let(:rooms) { Daily::RoomsApi.new }

    after do
      next if ENV['DAILY_API_KEY'].to_s.empty?

      begin
        configure_old_style
        Daily::RoomsApi.new.delete_room(room_name)
      rescue Daily::ApiError => e
        # 404 means the test already deleted it.
        raise unless e.code == 404
      end
    end

    it 'creates, reads, checks presence, makes a token, lists and deletes a room' do
      exp = Time.now.to_i + 600
      created = rooms.create_room(
        create_room_request: Daily::CreateRoomRequest.new(
          name: room_name,
          privacy: 'private',
          properties: Daily::RoomProperties.new(exp: exp, enable_recording: 'cloud')
        )
      )
      expect(created.name).to eq(room_name)
      expect(created[:name]).to eq(room_name)
      expect(created.url).to include(room_name)
      expect(created.config.exp).to eq(exp)

      config = rooms.get_room_config(room_name)
      expect(config.name).to eq(room_name)
      expect(config.privacy).to eq('private')
      expect(config.config.enable_recording).to eq('cloud')

      presence = rooms.get_room_presence(room_name)
      expect(presence.total_count).to eq(0)
      expect(presence[:data]).to eq([])

      token = Daily::MeetingTokensApi.new.create_meeting_token(
        create_meeting_token_request: Daily::CreateMeetingTokenRequest.new(
          properties: Daily::Properties.new(room_name: room_name, is_owner: false, exp: exp)
        )
      )
      expect(token.token).to be_a(String)
      expect(token[:token]).to eq(token.token)

      validated = Daily::MeetingTokensApi.new.validate_meeting_token(token.token)
      expect(validated.room_name).to eq(room_name)

      listed = rooms.list_rooms(limit: 100)
      expect(listed.total_count).to be >= 1
      expect(listed.data).to all(be_a(Daily::ListRooms200ResponseDataInner))

      deleted = rooms.delete_room(room_name)
      expect(deleted[:deleted]).to eq(true)
      expect(deleted.name).to eq(room_name)

      expect { rooms.get_room_config(room_name) }.to raise_error(Daily::ApiError) { |e| expect(e.code).to eq(404) }
    end

    it 'works with the 1.1.0 access_token style too' do
      Daily.configure do |c|
        c.api_key.clear
        c.api_key_prefix.clear
        c.access_token = ENV.fetch('DAILY_API_KEY')
      end
      created = Daily::RoomsApi.new.create_room(
        create_room_request: Daily::CreateRoomRequest.new(name: room_name, properties: Daily::RoomProperties.new(exp: Time.now.to_i + 600))
      )
      expect(created.name).to eq(room_name)
    end
  end

  it 'reads domain config (read only)' do
    domain = Daily::DomainApi.new.get_domain_config
    expect(domain.domain_name).to be_a(String)
    expect(domain[:domain_name]).to eq(domain.domain_name)
  end

  it 'returns 401 for a bad key' do
    Daily.configure do |c|
      c.api_key['sec0'] = 'not-a-real-key'
      c.api_key_prefix['sec0'] = 'Bearer'
    end
    expect { Daily::DomainApi.new.get_domain_config }.to raise_error(Daily::ApiError) { |e| expect(e.code).to eq(401) }
  end

  it 'reads recording info when DAILY_TEST_RECORDING_ID is set' do
    id = ENV['DAILY_TEST_RECORDING_ID'].to_s
    skip 'Set DAILY_TEST_RECORDING_ID to check get_recording_info' if id.empty?

    info = Daily::RecordingsApi.new.get_recording_info(id)
    expect(info.id).to eq(id)
    expect(info[:status]).to be_a(String)
  end
end
