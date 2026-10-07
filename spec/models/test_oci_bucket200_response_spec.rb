require 'spec_helper'

# TestOciBucket200Response is new in 1.1.0.
describe Daily::TestOciBucket200Response do
  let(:input) do
    {
      success: true,
      recordings_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true,
        allow_streaming_from_bucket: true
      },
      transcription_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true
      },
      test_file_key: "test_file_key-value",
      download_link: "download_link-value",
      expires: 1
    }
  end
  let(:expected_hash) do
    {
      success: true,
      recordings_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true,
        allow_streaming_from_bucket: true
      },
      transcription_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true
      },
      test_file_key: "test_file_key-value",
      download_link: "download_link-value",
      expires: 1
    }
  end
  let(:expected_json) do
    {
      success: true,
      recordings_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true,
        allow_streaming_from_bucket: true
      },
      transcription_bucket: {
        storage_provider: "aws",
        bucket_name: "bucket_name-value",
        bucket_region: "bucket_region-value",
        namespace: "namespace-value",
        assume_role_arn: "assume_role_arn-value",
        allow_api_access: true
      },
      test_file_key: "test_file_key-value",
      download_link: "download_link-value",
      expires: 1
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
