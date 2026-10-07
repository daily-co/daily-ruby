require 'spec_helper'

# TranscriptStartedPayload is new in 1.1.0.
describe Daily::TranscriptStartedPayload do
  let(:input) do
    {
      id: "id-value",
      info: {
        instanceId: "instance_id-value"
      },
      room_id: "room_id-value",
      room_name: "room_name-value",
      mtg_session_id: "mtg_session_id-value",
      max_participants: 1,
      duration: 1,
      participant_minutes: 1,
      status: "t_in_progress",
      out_params: {
        s3: {
          key: "key-value",
          bucket: "bucket-value",
          region: "region-value"
        }
      }
    }
  end
  let(:expected_hash) do
    {
      id: "id-value",
      info: {
        instanceId: "instance_id-value"
      },
      room_id: "room_id-value",
      room_name: "room_name-value",
      mtg_session_id: "mtg_session_id-value",
      max_participants: 1,
      duration: 1,
      participant_minutes: 1,
      status: "t_in_progress",
      out_params: {
        s3: {
          key: "key-value",
          bucket: "bucket-value",
          region: "region-value"
        }
      }
    }
  end
  let(:expected_json) do
    {
      id: "id-value",
      info: {
        instanceId: "instance_id-value"
      },
      room_id: "room_id-value",
      room_name: "room_name-value",
      mtg_session_id: "mtg_session_id-value",
      max_participants: 1,
      duration: 1,
      participant_minutes: 1,
      status: "t_in_progress",
      out_params: {
        s3: {
          key: "key-value",
          bucket: "bucket-value",
          region: "region-value"
        }
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
