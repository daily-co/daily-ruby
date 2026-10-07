require 'spec_helper'

# One request-and-response test for each PhoneNumbersApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::PhoneNumbersApi do
  let(:api) { daily_api(described_class) }

  describe '#purchased_phone_numbers (GET /purchased-phone-numbers, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/purchased-phone-numbers")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "ok"
        }))

      result = api.purchased_phone_numbers()

      expect(stub).to have_been_requested.once
      # No response schema in the spec, so nothing is returned.
        expect(result).to be_nil
    end
  end

  describe '#release_phone_number (DELETE /release-phone-number/{id}, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/release-phone-number/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "status-value"
        }))

      result = api.release_phone_number('test-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteDomainDialinConfig200Response)
        expect(result.to_hash).to eq({
          status: "status-value"
        })
    end
  end
end
