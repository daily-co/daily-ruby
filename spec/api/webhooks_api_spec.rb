require 'spec_helper'

# One request-and-response test for each WebhooksApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::WebhooksApi do
  let(:api) { daily_api(described_class) }

  describe '#delete_webhook (DELETE /webhooks/{id}, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/webhooks/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "ok"
        }))

      result = api.delete_webhook('test-id')

      expect(stub).to have_been_requested.once
      # No response schema in the spec, so nothing is returned.
        expect(result).to be_nil
    end
  end
end
