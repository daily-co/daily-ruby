require 'spec_helper'

# The calls our highest-volume 1.0.x users make, in the way 1.0.x code
# makes them: global config with api_key['sec0'] and the Bearer prefix.
# Each test checks the HTTP method, path, headers and JSON body sent, and
# what the caller gets back (typed reader and Hash-style read).
describe 'Calls made by high-volume 1.0.x users' do
  let(:base) { DailySpecHelpers::BASE }
  let(:auth) { { 'Authorization' => 'Bearer test-key', 'Accept' => 'application/json' } }

  before do
    Daily.configure do |c|
      c.api_key['sec0'] = 'test-key'
      c.api_key_prefix['sec0'] = 'Bearer'
    end
  end

  describe 'RecordingsApi#get_recording_info (GET /recordings/:id)' do
    let(:body) do
      {
        id: '0cb313e1-211f-4be0-833d-8c7305b19902',
        room_name: 'busy-room',
        start_ts: 1548789650,
        status: 'finished',
        max_participants: 2,
        duration: 277,
        share_token: 'TivXjlD22QQt',
        s3key: 'mydomain/test-recording-room/11245260397',
        mtgSessionId: '257764e6-c74e-4c30-944a-a887a03173a3',
        tracks: [{ size: 1024, type: 'video', s3key: 'mydomain/track.webm' }],
        storage_provider: 'aws'
      }
    end

    it 'sends GET with auth and reads the result, including storage_provider' do
      stub = stub_request(:get, "#{base}/recordings/#{body[:id]}")
        .with(headers: auth)
        .to_return(json_response(body))

      result = Daily::RecordingsApi.new.get_recording_info(body[:id])

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::GetRecordingInfo200Response)
      expect(result.status).to eq('finished')
      expect(result.storage_provider).to eq('aws')
      expect(result.mtg_session_id).to eq('257764e6-c74e-4c30-944a-a887a03173a3')
      expect(result[:storage_provider]).to eq('aws')
      expect(result[:mtgSessionId]).to eq('257764e6-c74e-4c30-944a-a887a03173a3')
      expect(result[:tracks].first[:s3key]).to eq('mydomain/track.webm')
      expect(result.to_hash).to eq(body)
    end
  end

  describe 'RoomsApi#get_room_presence (GET /rooms/:name/presence)' do
    let(:body) do
      {
        total_count: 1,
        data: [{
          room: 'busy-room',
          id: 'd61cd7b2-a273-42b4-89bd-be763fd562c1',
          userId: 'pbZ+ismP7dk=',
          userName: 'Moishe',
          mtgSessionId: '16e9701a-93e0-4933-83c9-223e7c40d552',
          joinTime: '2023-01-01T20:53:19.000Z',
          duration: 2312
        }]
      }
    end

    it 'sends GET with query options and reads entries, including mtgSessionId' do
      stub = stub_request(:get, "#{base}/rooms/busy-room/presence")
        .with(headers: auth, query: { limit: '10', userId: 'pbZ+ismP7dk=' })
        .to_return(json_response(body))

      result = Daily::RoomsApi.new.get_room_presence('busy-room', limit: 10, user_id: 'pbZ+ismP7dk=')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::RoomsRoomNamePresenceGetRes)
      expect(result.total_count).to eq(1)
      expect(result.data.first.mtg_session_id).to eq('16e9701a-93e0-4933-83c9-223e7c40d552')
      expect(result[:data].first[:mtgSessionId]).to eq('16e9701a-93e0-4933-83c9-223e7c40d552')
      expect(result[:total_count]).to eq(1)
    end

    it 'handles an empty room' do
      stub_request(:get, "#{base}/rooms/busy-room/presence").to_return(json_response({ total_count: 0, data: [] }))
      result = Daily::RoomsApi.new.get_room_presence('busy-room')
      expect(result.data).to eq([])
      expect(result[:total_count]).to eq(0)
    end
  end

  describe 'RoomsApi#delete_room (DELETE /rooms/:name)' do
    it 'sends DELETE and keeps result[:deleted] working (was a plain Hash in 1.0.x)' do
      stub = stub_request(:delete, "#{base}/rooms/busy-room")
        .with(headers: auth)
        .to_return(json_response({ deleted: true, name: 'busy-room' }))

      result = Daily::RoomsApi.new.delete_room('busy-room')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteRoom200Response)
      expect(result[:deleted]).to eq(true)
      expect(result['deleted']).to eq(true)
      expect(result.fetch(:name)).to eq('busy-room')
      expect(result.deleted).to eq(true)
    end
  end

  describe 'MeetingTokensApi#create_meeting_token (POST /meeting-tokens)' do
    it 'sends the token properties as JSON and reads the token' do
      stub = stub_request(:post, "#{base}/meeting-tokens")
        .with(
          headers: auth.merge('Content-Type' => 'application/json'),
          body: hash_including(
            'properties' => hash_including(
              'room_name' => 'busy-room',
              'is_owner' => true,
              'exp' => 1_900_000_000,
              'user_name' => 'Ada',
              'enable_recording' => 'cloud'
            )
          )
        )
        .to_return(json_response({ token: 'eyJhbGciOi.token' }))

      request = Daily::CreateMeetingTokenRequest.new(
        properties: Daily::Properties.new(room_name: 'busy-room', is_owner: true, exp: 1_900_000_000, user_name: 'Ada', enable_recording: 'cloud')
      )
      result = Daily::MeetingTokensApi.new.create_meeting_token(create_meeting_token_request: request)

      expect(stub).to have_been_requested.once
      expect(result.token).to eq('eyJhbGciOi.token')
      expect(result[:token]).to eq('eyJhbGciOi.token')
    end

    it 'accepts a plain Hash as the request body' do
      stub = stub_request(:post, "#{base}/meeting-tokens")
        .with(body: { properties: { room_name: 'busy-room', is_owner: false } }.to_json)
        .to_return(json_response({ token: 't' }))
      Daily::MeetingTokensApi.new.create_meeting_token(create_meeting_token_request: { properties: { room_name: 'busy-room', is_owner: false } })
      expect(stub).to have_been_requested.once
    end
  end

  describe 'RoomsApi#room_recordings_start (POST /rooms/:name/recordings/start)' do
    it 'sends the options as JSON' do
      stub = stub_request(:post, "#{base}/rooms/busy-room/recordings/start")
        .with(headers: auth.merge('Content-Type' => 'application/json'), body: { type: 'cloud', maxDuration: 3600 })
        .to_return(json_response({ status: 'sent' }))

      opts = Daily::RecordingStreamingOptions.new(type: 'cloud', max_duration: 3600)
      result = Daily::RoomsApi.new.room_recordings_start('busy-room', recording_streaming_options: opts)

      expect(stub).to have_been_requested.once
      # No response schema in the spec, so nothing is returned (same as 1.0.x).
      expect(result).to be_nil
    end
  end

  describe 'RoomsApi#room_recordings_stop (POST /rooms/:name/recordings/stop)' do
    it 'sends POST with no body' do
      stub = stub_request(:post, "#{base}/rooms/busy-room/recordings/stop")
        .with(headers: auth)
        .to_return(json_response({ status: 'sent' }))

      result = Daily::RoomsApi.new.room_recordings_stop('busy-room')

      expect(stub).to have_been_requested.once
      expect(result).to be_nil
    end
  end

  describe 'RoomsApi#create_room (POST /rooms)' do
    let(:response) do
      {
        id: 'd61cd7b2-a273-42b4-89bd-be763fd562c1',
        name: 'busy-room',
        api_created: true,
        privacy: 'private',
        url: 'https://mydomain.daily.co/busy-room',
        created_at: '2019-01-26T09:01:22.000Z',
        config: { exp: 1_900_000_000, enable_recording: 'cloud', start_video_off: true }
      }
    end

    it 'sends the room as JSON and reads the created room' do
      stub = stub_request(:post, "#{base}/rooms")
        .with(
          headers: auth.merge('Content-Type' => 'application/json'),
          body: hash_including(
            'name' => 'busy-room',
            'privacy' => 'private',
            'properties' => hash_including('exp' => 1_900_000_000, 'enable_recording' => 'cloud')
          )
        )
        .to_return(json_response(response))

      request = Daily::CreateRoomRequest.new(
        name: 'busy-room', privacy: 'private',
        properties: Daily::RoomProperties.new(exp: 1_900_000_000, enable_recording: 'cloud')
      )
      result = Daily::RoomsApi.new.create_room(create_room_request: request)

      expect(stub).to have_been_requested.once
      expect(result.url).to eq('https://mydomain.daily.co/busy-room')
      expect(result[:name]).to eq('busy-room')
      # config is the room config model, so these fields come through.
      expect(result.config.start_video_off).to eq(true)
      expect(result.config.enable_recording).to eq('cloud')
      expect(result[:config][:exp]).to eq(1_900_000_000)
    end

    it 'does not send owner_only_broadcast any more' do
      stub = stub_request(:post, "#{base}/rooms")
        .with { |req| !JSON.parse(req.body)['properties'].key?('owner_only_broadcast') }
        .to_return(json_response(response))
      Daily::RoomsApi.new.create_room(create_room_request: Daily::CreateRoomRequest.new(name: 'busy-room', properties: Daily::RoomProperties.new))
      expect(stub).to have_been_requested.once
    end
  end

  describe 'errors' do
    {
      429 => { error: 'rate-limit-error', info: 'Too many requests' },
      404 => { error: 'not-found', info: 'room busy-room not found' },
      400 => { error: 'invalid-request-error', info: 'bad property' },
      401 => { error: 'authentication-error', info: 'invalid API key' }
    }.each do |status, error_body|
      it "raises Daily::ApiError with code #{status} and keeps the body" do
        stub_request(:get, "#{base}/rooms/busy-room/presence")
          .to_return(status: status, body: error_body.to_json, headers: { 'Content-Type' => 'application/json', 'Retry-After' => '1' })

        expect { Daily::RoomsApi.new.get_room_presence('busy-room') }.to raise_error(Daily::ApiError) { |e|
          expect(e.code).to eq(status)
          expect(JSON.parse(e.response_body, symbolize_names: true)).to eq(error_body)
          expect(e.response_headers['Retry-After']).to eq('1')
        }
      end
    end

    it 'raises on 429 for every high-volume call, not only presence' do
      stub_request(:any, /api\.daily\.co/).to_return(status: 429, body: '{"error":"rate-limit-error"}')
      calls = [
        -> { Daily::RecordingsApi.new.get_recording_info('r1') },
        -> { Daily::RoomsApi.new.delete_room('busy-room') },
        -> { Daily::MeetingTokensApi.new.create_meeting_token(create_meeting_token_request: { properties: { room_name: 'x' } }) },
        -> { Daily::RoomsApi.new.room_recordings_start('busy-room') },
        -> { Daily::RoomsApi.new.room_recordings_stop('busy-room') },
        -> { Daily::RoomsApi.new.create_room(create_room_request: { name: 'x' }) }
      ]
      calls.each do |call|
        expect { call.call }.to raise_error(Daily::ApiError) { |e| expect(e.code).to eq(429) }
      end
    end
  end
end
