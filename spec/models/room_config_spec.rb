require 'spec_helper'

# RoomConfig is new in 1.1.0.
describe Daily::RoomConfig do
  let(:input) do
    {
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
  end
  let(:expected_hash) do
    {
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
  end
  let(:expected_json) do
    {
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
  end

  it 'round-trips through build_from_hash and to_hash' do
    model = described_class.build_from_hash(input)
    expect(model).to be_a(described_class)
    expect(model.to_hash).to eq(expected_hash)
  end

  it 'serialises to JSON that parses back to the input' do
    model = described_class.build_from_hash(input)
    expect(JSON.parse(model.to_json, symbolize_names: true)).to eq(expected_json)
  end

  it 'can be built with new and Ruby attribute names' do
    model = described_class.build_from_hash(input)
    copy = described_class.new(described_class.attribute_map.keys.to_h { |a| [a, model.send(a)] })
    expect(copy).to eq(model)
  end
end
