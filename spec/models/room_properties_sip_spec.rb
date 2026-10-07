require 'spec_helper'

# RoomPropertiesSip is new in 1.1.0.
describe Daily::RoomPropertiesSip do
  let(:input) do
    {
      display_name: "display_name-value",
      sip_mode: "dial-in",
      video: true,
      num_endpoints: 1,
      force_digit_only_username: true,
      codecs: {
        audio: [
          "value"
        ],
        video: [
          "value"
        ]
      },
      provider: "daily",
      dialin_config: {
        allow_room_start: true,
        dialin_geo: "dialin_geo-value",
        max_idle_timeout_sec: 1.5,
        max_idle_timeout_post_conversation_sec: 1.5,
        hold_music_enabled: true
      }
    }
  end
  let(:expected_hash) do
    {
      display_name: "display_name-value",
      sip_mode: "dial-in",
      video: true,
      num_endpoints: 1,
      force_digit_only_username: true,
      codecs: {
        audio: [
          "value"
        ],
        video: [
          "value"
        ]
      },
      provider: "daily",
      dialin_config: {
        allow_room_start: true,
        dialin_geo: "dialin_geo-value",
        max_idle_timeout_sec: 1.5,
        max_idle_timeout_post_conversation_sec: 1.5,
        hold_music_enabled: true
      }
    }
  end
  let(:expected_json) do
    {
      display_name: "display_name-value",
      sip_mode: "dial-in",
      video: true,
      num_endpoints: 1,
      force_digit_only_username: true,
      codecs: {
        audio: [
          "value"
        ],
        video: [
          "value"
        ]
      },
      provider: "daily",
      dialin_config: {
        allow_room_start: true,
        dialin_geo: "dialin_geo-value",
        max_idle_timeout_sec: 1.5,
        max_idle_timeout_post_conversation_sec: 1.5,
        hold_music_enabled: true
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
