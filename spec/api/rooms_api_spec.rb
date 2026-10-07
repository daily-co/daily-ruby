require 'spec_helper'

# One request-and-response test for each RoomsApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::RoomsApi do
  let(:api) { daily_api(described_class) }

  describe '#delete_room (DELETE /rooms/{room_name}, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/rooms/test-room-name")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          deleted: true,
          name: "name-value"
        }))

      result = api.delete_room('test-room-name')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteRoom200Response)
        expect(result.to_hash).to eq({
          deleted: true,
          name: "name-value"
        })
    end
  end

  describe '#room_sip_call_transfer (POST /rooms/{room_name}/sipCallTransfer, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/rooms/test-room-name/sipCallTransfer")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          ok: true
        }))

      result = api.room_sip_call_transfer('test-room-name')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::RoomSipCallTransfer200Response)
        expect(result.to_hash).to eq({
          ok: true
        })
    end
  end

  describe '#room_sip_refer (POST /rooms/{room_name}/sipRefer, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/rooms/test-room-name/sipRefer")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          ok: true
        }))

      result = api.room_sip_refer('test-room-name')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::RoomSipCallTransfer200Response)
        expect(result.to_hash).to eq({
          ok: true
        })
    end
  end

  describe '#room_transcription_update (POST /rooms/{room_name}/transcription/update, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/rooms/test-room-name/transcription/update")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "ok"
        }))

      result = api.room_transcription_update('test-room-name')

      expect(stub).to have_been_requested.once
      # No response schema in the spec, so nothing is returned.
        expect(result).to be_nil
    end
  end

  describe '#set_room_config (POST /rooms/{room_name}, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/rooms/test-room-name")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          name: "name-value",
          api_created: true,
          privacy: "privacy-value",
          url: "url-value",
          created_at: "created_at-value",
          config: {
            nbf: 1,
            exp: 1,
            max_participants: 1,
            enable_people_ui: true,
            enable_cpu_warning_notifications: true,
            enable_pip_ui: true,
            enable_emoji_reactions: true,
            enable_hand_raising: true,
            enable_prejoin_ui: true,
            enable_live_captions_ui: true,
            enable_network_ui: true,
            enable_noise_cancellation_ui: true,
            enable_breakout_rooms: true,
            enable_knocking: true,
            enable_screenshare: true,
            enable_video_processing_ui: true,
            enable_chat: true,
            enable_shared_chat_history: true,
            start_video_off: true,
            start_audio_off: true,
            enable_recording: [
              "value"
            ],
            enable_raw_tracks_transcoded_audio: "aac",
            eject_at_room_exp: true,
            eject_after_elapsed: 1,
            enable_advanced_chat: true,
            enable_hidden_participants: true,
            enable_mesh_sfu: true,
            sfu_switchover: 1.5,
            enable_adaptive_simulcast: true,
            enable_multiparty_adaptive_simulcast: true,
            enforce_unique_user_ids: true,
            experimental_optimize_large_calls: true,
            lang: "da",
            meeting_join_hook: "meeting_join_hook-value",
            geo: "geo-value",
            rtmp_geo: "rtmp_geo-value",
            disable_rtmp_geo_fallback: true,
            recordings_bucket: {
              storage_provider: "aws",
              bucket_name: "bucket_name-value",
              bucket_region: "bucket_region-value",
              namespace: "namespace-value",
              assume_role_arn: "assume_role_arn-value",
              allow_api_access: true,
              allow_streaming_from_bucket: true
            },
            enable_terse_logging: true,
            auto_transcription_settings: {
              key: "value"
            },
            enable_transcription_storage: true,
            transcription_bucket: {
              storage_provider: "aws",
              bucket_name: "bucket_name-value",
              bucket_region: "bucket_region-value",
              namespace: "namespace-value",
              assume_role_arn: "assume_role_arn-value",
              allow_api_access: true
            },
            recordings_template: "recordings_template-value",
            transcription_template: "transcription_template-value",
            enable_dialout: true,
            dialout_config: {
              allow_room_start: true,
              dialout_geo: "dialout_geo-value",
              max_idle_timeout_sec: 1.5,
              max_idle_timeout_post_conversation_sec: 1.5
            },
            streaming_endpoints: [
              {
                name: "name-value",
                type: "type-value",
                rtmp_config: {
                  url: "url-value"
                },
                hls_config: {
                  storage: {
                    bucket_name: "bucket_name-value",
                    bucket_region: "bucket_region-value",
                    assume_role_arn: "assume_role_arn-value",
                    path: "path-value",
                    path_template: "path_template-value"
                  },
                  save_hls_recording: true,
                  variants: [
                    {
                      width: 1.5,
                      height: 1.5,
                      fps: 1.5,
                      bitrate: 1.5,
                      iframe_only: true
                    }
                  ]
                }
              }
            ],
            permissions: {
              hasPresence: true,
              canSend: [
                "value"
              ],
              canReceive: {
                key: "value"
              },
              canAdmin: [
                "value"
              ]
            },
            sip_uri: {
              endpoint: "endpoint-value",
              extra_endpoints: [
                "value"
              ]
            }
          }
        }))

      result = api.set_room_config('test-room-name')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::RoomsRoomNameGetRes)
        expect(result.to_hash).to eq({
          id: "id-value",
          name: "name-value",
          api_created: true,
          privacy: "privacy-value",
          url: "url-value",
          created_at: "created_at-value",
          config: {
            nbf: 1,
            exp: 1,
            max_participants: 1,
            enable_people_ui: true,
            enable_cpu_warning_notifications: true,
            enable_pip_ui: true,
            enable_emoji_reactions: true,
            enable_hand_raising: true,
            enable_prejoin_ui: true,
            enable_live_captions_ui: true,
            enable_network_ui: true,
            enable_noise_cancellation_ui: true,
            enable_breakout_rooms: true,
            enable_knocking: true,
            enable_screenshare: true,
            enable_video_processing_ui: true,
            enable_chat: true,
            enable_shared_chat_history: true,
            start_video_off: true,
            start_audio_off: true,
            enable_recording: [
              "value"
            ],
            enable_raw_tracks_transcoded_audio: "aac",
            eject_at_room_exp: true,
            eject_after_elapsed: 1,
            enable_advanced_chat: true,
            enable_hidden_participants: true,
            enable_mesh_sfu: true,
            sfu_switchover: 1.5,
            enable_adaptive_simulcast: true,
            enable_multiparty_adaptive_simulcast: true,
            enforce_unique_user_ids: true,
            experimental_optimize_large_calls: true,
            lang: "da",
            meeting_join_hook: "meeting_join_hook-value",
            geo: "geo-value",
            rtmp_geo: "rtmp_geo-value",
            disable_rtmp_geo_fallback: true,
            recordings_bucket: {
              storage_provider: "aws",
              bucket_name: "bucket_name-value",
              bucket_region: "bucket_region-value",
              namespace: "namespace-value",
              assume_role_arn: "assume_role_arn-value",
              allow_api_access: true,
              allow_streaming_from_bucket: true
            },
            enable_terse_logging: true,
            auto_transcription_settings: {
              key: "value"
            },
            enable_transcription_storage: true,
            transcription_bucket: {
              storage_provider: "aws",
              bucket_name: "bucket_name-value",
              bucket_region: "bucket_region-value",
              namespace: "namespace-value",
              assume_role_arn: "assume_role_arn-value",
              allow_api_access: true
            },
            recordings_template: "recordings_template-value",
            transcription_template: "transcription_template-value",
            enable_dialout: true,
            dialout_config: {
              allow_room_start: true,
              dialout_geo: "dialout_geo-value",
              max_idle_timeout_sec: 1.5,
              max_idle_timeout_post_conversation_sec: 1.5
            },
            streaming_endpoints: [
              {
                name: "name-value",
                type: "type-value",
                rtmp_config: {
                  url: "url-value"
                },
                hls_config: {
                  storage: {
                    bucket_name: "bucket_name-value",
                    bucket_region: "bucket_region-value",
                    assume_role_arn: "assume_role_arn-value",
                    path: "path-value",
                    path_template: "path_template-value"
                  },
                  save_hls_recording: true,
                  variants: [
                    {
                      width: 1.5,
                      height: 1.5,
                      fps: 1.5,
                      bitrate: 1.5,
                      iframe_only: true
                    }
                  ]
                }
              }
            ],
            permissions: {
              hasPresence: true,
              canSend: [
                "value"
              ],
              canReceive: {
                key: "value"
              },
              canAdmin: [
                "value"
              ]
            },
            sip_uri: {
              endpoint: "endpoint-value",
              extra_endpoints: [
                "value"
              ]
            }
          }
        })
    end
  end
end
