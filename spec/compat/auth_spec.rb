require 'spec_helper'

# 1.0.x set the key with api_key['sec0']. 1.1.0 generated code only reads
# access_token. compat.rb makes both send the same header.
describe 'Auth compatibility' do
  let(:url) { "#{DailySpecHelpers::BASE}/rooms/my-room" }

  def expect_auth_header(value)
    stub = stub_request(:delete, url)
      .with(headers: { 'Authorization' => value })
      .to_return(json_response({ deleted: true, name: 'my-room' }))
    yield
    expect(stub).to have_been_requested.once
  end

  it 'sends api_key[sec0] with the Bearer prefix (the usual 1.0.x setup)' do
    api = daily_api(Daily::RoomsApi) do |c|
      c.api_key['sec0'] = 'old-key'
      c.api_key_prefix['sec0'] = 'Bearer'
    end
    expect_auth_header('Bearer old-key') { api.delete_room('my-room') }
  end

  it 'adds Bearer to api_key[sec0] when no prefix is set' do
    api = daily_api(Daily::RoomsApi) { |c| c.api_key['sec0'] = 'old-key' }
    expect_auth_header('Bearer old-key') { api.delete_room('my-room') }
  end

  it 'does not add Bearer twice when the key already has it' do
    api = daily_api(Daily::RoomsApi) { |c| c.api_key['sec0'] = 'Bearer old-key' }
    expect_auth_header('Bearer old-key') { api.delete_room('my-room') }
  end

  it 'sends access_token (the 1.1.0 setup)' do
    api = daily_api(Daily::RoomsApi) { |c| c.access_token = 'new-key' }
    expect_auth_header('Bearer new-key') { api.delete_room('my-room') }
  end

  it 'calls access_token_getter on each request' do
    calls = 0
    api = daily_api(Daily::RoomsApi) { |c| c.access_token_getter = -> { calls += 1; "key-#{calls}" } }
    expect_auth_header('Bearer key-1') { api.delete_room('my-room') }
    expect_auth_header('Bearer key-2') { api.delete_room('my-room') }
  end

  it 'prefers access_token when both styles are set' do
    api = daily_api(Daily::RoomsApi) do |c|
      c.access_token = 'new-key'
      c.api_key['sec0'] = 'old-key'
      c.api_key_prefix['sec0'] = 'Bearer'
    end
    expect_auth_header('Bearer new-key') { api.delete_room('my-room') }
  end

  it 'works through the global Daily.configure block' do
    Daily.configure do |c|
      c.api_key['sec0'] = 'global-key'
      c.api_key_prefix['sec0'] = 'Bearer'
    end
    expect_auth_header('Bearer global-key') { Daily::RoomsApi.new.delete_room('my-room') }
  end

  it 'still sends the header when a caller asks for the old sec0 name' do
    api = daily_api(Daily::RoomsApi) { |c| c.api_key['sec0'] = 'old-key' }
    expect_auth_header('Bearer old-key') { api.delete_room('my-room', debug_auth_names: ['sec0']) }
  end

  it 'exposes both bearerAuth and sec0 in auth_settings' do
    config = Daily::Configuration.new
    config.access_token = 'k'
    expect(config.auth_settings.keys).to contain_exactly('bearerAuth', 'sec0')
    expect(config.auth_settings['bearerAuth'][:value]).to eq('Bearer k')
  end
end
