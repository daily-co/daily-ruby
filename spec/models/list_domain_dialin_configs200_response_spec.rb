require 'spec_helper'

# ListDomainDialinConfigs200Response is new in 1.1.0.
describe Daily::ListDomainDialinConfigs200Response do
  let(:input) do
    {
      total_count: 1,
      data: [
        {
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }
      ]
    }
  end
  let(:expected_hash) do
    {
      total_count: 1,
      data: [
        {
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }
      ]
    }
  end
  let(:expected_json) do
    {
      total_count: 1,
      data: [
        {
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }
      ]
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
