require 'spec_helper'

# RoomPropertiesStreamingEndpointsInnerHlsConfigStorage is new in 1.1.0.
describe Daily::RoomPropertiesStreamingEndpointsInnerHlsConfigStorage do
  let(:input) do
    {
      bucket_name: "bucket_name-value",
      bucket_region: "bucket_region-value",
      assume_role_arn: "assume_role_arn-value",
      path: "path-value",
      path_template: "path_template-value"
    }
  end
  let(:expected_hash) do
    {
      bucket_name: "bucket_name-value",
      bucket_region: "bucket_region-value",
      assume_role_arn: "assume_role_arn-value",
      path: "path-value",
      path_template: "path_template-value"
    }
  end
  let(:expected_json) do
    {
      bucket_name: "bucket_name-value",
      bucket_region: "bucket_region-value",
      assume_role_arn: "assume_role_arn-value",
      path: "path-value",
      path_template: "path_template-value"
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
