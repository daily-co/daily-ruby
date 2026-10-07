require 'spec_helper'

# DeleteRecording200Response is new in 1.1.0.
describe Daily::DeleteRecording200Response do
  let(:input) do
    {
      deleted: true,
      id: "id-value",
      s3_bucket: "s3_bucket-value",
      s3_region: "s3_region-value",
      s3_key: "s3_key-value",
      storage_provider: "aws"
    }
  end
  let(:expected_hash) do
    {
      deleted: true,
      id: "id-value",
      s3_bucket: "s3_bucket-value",
      s3_region: "s3_region-value",
      s3_key: "s3_key-value",
      storage_provider: "aws"
    }
  end
  let(:expected_json) do
    {
      deleted: true,
      id: "id-value",
      s3_bucket: "s3_bucket-value",
      s3_region: "s3_region-value",
      s3_key: "s3_key-value",
      storage_provider: "aws"
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
