require 'spec_helper'

# Room and token property changes in 1.1.0 that callers will notice.
describe 'Room and token property changes in 1.1.0' do
  let(:client) { Daily::ApiClient.new(Daily::Configuration.new) }

  def body_of(model)
    JSON.parse(client.object_to_http_body(model))
  end

  describe 'RoomProperties enable_recording (now String or Array of String)' do
    it 'still takes a plain string' do
      props = Daily::RoomProperties.new(enable_recording: 'cloud')
      expect(props.enable_recording).to eq('cloud')
      expect(body_of(props)['enable_recording']).to eq('cloud')
    end

    it 'takes an array of recording types' do
      props = Daily::RoomProperties.new(enable_recording: ['cloud', 'raw-tracks'])
      expect(body_of(props)['enable_recording']).to eq(['cloud', 'raw-tracks'])
    end

    it 'reads both shapes back from a response' do
      expect(Daily::RoomProperties.build_from_hash({ enable_recording: 'cloud' }).enable_recording).to eq('cloud')
      expect(Daily::RoomProperties.build_from_hash({ enable_recording: ['cloud', 'raw-tracks'] }).enable_recording).to eq(['cloud', 'raw-tracks'])
    end
  end

  describe 'meeting token Properties enable_recording (now String or Array of String)' do
    it 'still takes a plain string' do
      props = Daily::Properties.new(room_name: 'r', enable_recording: 'cloud')
      expect(body_of(props)['enable_recording']).to eq('cloud')
    end

    it 'takes an array' do
      props = Daily::Properties.new(room_name: 'r', enable_recording: ['cloud', 'raw-tracks'])
      expect(body_of(props)['enable_recording']).to eq(['cloud', 'raw-tracks'])
    end
  end

  describe 'RoomPropertiesStreamingEndpointsInner' do
    it 'sends hls_config as the nested object the server expects' do
      endpoint = Daily::RoomPropertiesStreamingEndpointsInner.new(
        name: 'my-hls',
        type: 'hls',
        hls_config: Daily::RoomPropertiesStreamingEndpointsInnerHlsConfig.new(
          storage: Daily::RoomPropertiesStreamingEndpointsInnerHlsConfigStorage.new(
            bucket_name: 'my-bucket',
            bucket_region: 'us-west-2',
            assume_role_arn: 'arn:aws:iam::123456789012:role/DailyHls',
            path: 'hls/my-room',
            path_template: '{room_name}/{epoch_time}'
          ),
          save_hls_recording: true,
          variants: [
            Daily::RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner.new(width: 1920, height: 1080, fps: 30, bitrate: 3500, iframe_only: false)
          ]
        )
      )

      expect(body_of(endpoint)).to eq(
        'name' => 'my-hls',
        'type' => 'hls',
        'hls_config' => {
          'storage' => {
            'bucket_name' => 'my-bucket',
            'bucket_region' => 'us-west-2',
            'assume_role_arn' => 'arn:aws:iam::123456789012:role/DailyHls',
            'path' => 'hls/my-room',
            'path_template' => '{room_name}/{epoch_time}'
          },
          'save_hls_recording' => true,
          'variants' => [{ 'width' => 1920, 'height' => 1080, 'fps' => 30, 'bitrate' => 3500, 'iframe_only' => false }]
        }
      )
    end

    it 'sends rtmp_config as a nested object' do
      endpoint = Daily::RoomPropertiesStreamingEndpointsInner.new(
        name: 'my-rtmp',
        type: 'rtmp',
        rtmp_config: Daily::RoomPropertiesStreamingEndpointsInnerRtmpConfig.new(url: 'rtmps://live.example.com/app/key')
      )
      expect(body_of(endpoint)).to eq(
        'name' => 'my-rtmp',
        'type' => 'rtmp',
        'rtmp_config' => { 'url' => 'rtmps://live.example.com/app/key' }
      )
    end

    it 'builds the same JSON from a plain Hash' do
      input = {
        name: 'my-hls', type: 'hls',
        hls_config: { storage: { bucket_name: 'b', bucket_region: 'us-west-2', assume_role_arn: 'arn', path: 'p' }, save_hls_recording: false }
      }
      expect(Daily::RoomPropertiesStreamingEndpointsInner.build_from_hash(input).to_hash).to eq(input)
    end

    it 'sends streaming_endpoints nested inside room properties' do
      props = Daily::RoomProperties.new(
        streaming_endpoints: [Daily::RoomPropertiesStreamingEndpointsInner.new(name: 'my-rtmp', type: 'rtmp', rtmp_config: { url: 'rtmp://x' })]
      )
      expect(body_of(props)['streaming_endpoints']).to eq([{ 'name' => 'my-rtmp', 'type' => 'rtmp', 'rtmp_config' => { 'url' => 'rtmp://x' } }])
    end
  end

  describe 'owner_only_broadcast (removed from the API, changelog 2026-02-24)' do
    it 'raises ArgumentError on RoomProperties' do
      expect { Daily::RoomProperties.new(owner_only_broadcast: true) }
        .to raise_error(ArgumentError, /owner_only_broadcast/)
    end

    it 'raises ArgumentError on DomainProperties' do
      expect { Daily::DomainProperties.new(owner_only_broadcast: true) }
        .to raise_error(ArgumentError, /owner_only_broadcast/)
    end

    it 'is ignored when it shows up in a response' do
      props = Daily::RoomProperties.build_from_hash({ owner_only_broadcast: true, enable_chat: true })
      expect(props.enable_chat).to eq(true)
      expect(props.to_hash).not_to have_key(:owner_only_broadcast)
    end
  end
end
