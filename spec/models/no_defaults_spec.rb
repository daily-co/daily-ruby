require 'spec_helper'

# The SDK must only send what the caller set. The server owns the defaults.
# 1.0.x filled in spec defaults (enable_chat: false, max_participants: 200,
# and so on) and sent them on every request, which could override domain
# settings or switch a feature off on update. run.sh now strips them.
describe 'No defaults are filled in' do
  let(:client) { Daily::ApiClient.new(Daily::Configuration.new) }

  it 'sends nothing for RoomProperties when nothing is set' do
    expect(Daily::RoomProperties.new.to_hash).to eq({})
  end

  it 'sends only room_name for a token with only room_name set' do
    request = Daily::CreateMeetingTokenRequest.new(properties: Daily::Properties.new(room_name: 'my-room'))
    expect(JSON.parse(client.object_to_http_body(request))).to eq('properties' => { 'room_name' => 'my-room' })
  end

  it 'sends only what was set on a room update' do
    request = Daily::SetRoomConfigRequest.new(properties: Daily::RoomProperties.new(enable_chat: true))
    expect(JSON.parse(client.object_to_http_body(request))).to eq('properties' => { 'enable_chat' => true })
  end

  it 'leaves response fields nil when the server did not send them' do
    room = Daily::RoomsRoomNameGetRes.build_from_hash({})
    expect(room.api_created).to be_nil
    expect(room.to_hash).to eq({})

    config = Daily::RoomConfig.build_from_hash({})
    expect(config.max_participants).to be_nil
    expect(config.start_video_off).to be_nil
    expect(config.to_hash).to eq({})
  end

  it 'holds for every model that can be built empty' do
    models = Daily.constants.map { |c| Daily.const_get(c) }
                  .select { |k| k.is_a?(Class) && k.respond_to?(:openapi_types) }
    filled = models.filter_map do |k|
      model = begin
        k.new
      rescue ArgumentError
        next # has a required field
      end
      [k, model.to_hash] unless model.to_hash.empty?
    end
    expect(filled).to eq([])
  end
end
