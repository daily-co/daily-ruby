require 'spec_helper'

# create_room, set_room_config, get_room_config and list_rooms all type the
# room `config` as the shared Daily::RoomConfig model. In 1.0.5, list_rooms
# config only had start_video_off, so every other field was dropped.
describe 'Room config in responses' do
  let(:api) { daily_api(Daily::RoomsApi) }
  let(:base) { DailySpecHelpers::BASE }
  let(:config) do
    {
      exp: 1_900_000_000,
      max_participants: 4,
      enable_chat: true,
      enable_recording: 'cloud',
      start_video_off: true,
      geo: 'eu-central-1'
    }
  end
  let(:room) do
    {
      id: 'd61cd7b2-a273-42b4-89bd-be763fd562c1',
      name: 'my-room',
      api_created: true,
      privacy: 'private',
      url: 'https://mydomain.daily.co/my-room',
      created_at: '2019-01-26T09:01:22.000Z',
      config: config
    }
  end

  it 'list_rooms reads config fields beyond start_video_off' do
    stub_request(:get, "#{base}/rooms").to_return(json_response({ total_count: 1, data: [room] }))
    result = api.list_rooms
    entry = result.data.first
    expect(entry.config).to be_a(Daily::RoomConfig)
    expect(entry.config.max_participants).to eq(4)
    expect(entry.config.enable_chat).to eq(true)
    expect(entry.config.geo).to eq('eu-central-1')
    expect(entry.config.start_video_off).to eq(true)
    expect(result[:data].first[:config]).to eq(config)
  end

  it 'get_room_config reads the same config model' do
    stub_request(:get, "#{base}/rooms/my-room").to_return(json_response(room))
    result = api.get_room_config('my-room')
    expect(result.config).to be_a(Daily::RoomConfig)
    expect(result.config.to_hash).to eq(config)
  end

  it 'set_room_config returns the updated room' do
    stub_request(:post, "#{base}/rooms/my-room")
      .with(body: { properties: { enable_chat: true } })
      .to_return(json_response(room))
    request = Daily::SetRoomConfigRequest.new(properties: Daily::RoomProperties.new(enable_chat: true))
    result = api.set_room_config('my-room', set_room_config_request: request)
    expect(result).to be_a(Daily::RoomsRoomNameGetRes)
    expect(result.config.enable_chat).to eq(true)
  end

  it 'create_room reads the same config model' do
    stub_request(:post, "#{base}/rooms").to_return(json_response(room))
    result = api.create_room(create_room_request: Daily::CreateRoomRequest.new(name: 'my-room'))
    expect(result.config).to be_a(Daily::RoomConfig)
    expect(result.config.to_hash).to eq(config)
  end
end
