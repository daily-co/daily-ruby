require 'spec_helper'

# One request-and-response test for each RecordingsApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::RecordingsApi do
  let(:api) { daily_api(described_class) }

  describe '#delete_recording (DELETE /recordings/{recording_id}, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/recordings/test-recording-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          deleted: true,
          id: "id-value",
          s3_bucket: "s3_bucket-value",
          s3_region: "s3_region-value",
          s3_key: "s3_key-value",
          storage_provider: "aws"
        }))

      result = api.delete_recording('test-recording-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteRecording200Response)
        expect(result.to_hash).to eq({
          deleted: true,
          id: "id-value",
          s3_bucket: "s3_bucket-value",
          s3_region: "s3_region-value",
          s3_key: "s3_key-value",
          storage_provider: "aws"
        })
    end
  end

  describe '#test_oci_bucket (GET /recordings/test-oci-bucket, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/recordings/test-oci-bucket")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
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
        }))

      result = api.test_oci_bucket()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::TestOciBucket200Response)
        expect(result.to_hash).to eq({
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
        })
    end
  end
end
