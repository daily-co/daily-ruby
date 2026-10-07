require 'spec_helper'

# One request-and-response test for each LogsApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::LogsApi do
  let(:api) { daily_api(described_class) }

  describe '#list_api_logs (GET /logs/api, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/logs/api")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response([
          {
            id: "id-value",
            userId: "user_id-value",
            domainId: "domain_id-value",
            source: "source-value",
            ip: "ip-value",
            method: "method-value",
            url: "url-value",
            status: 1,
            createdAt: "2026-01-01T00:00:00Z",
            request: "request-value",
            response: "response-value"
          }
        ]))

      result = api.list_api_logs()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Array)
        expect(result.first).to be_a(Daily::ListAPILogs200ResponseInner)
        expect(result.map(&:to_hash)).to eq([
          {
            id: "id-value",
            userId: "user_id-value",
            domainId: "domain_id-value",
            source: "source-value",
            ip: "ip-value",
            method: "method-value",
            url: "url-value",
            status: 1,
            createdAt: Time.parse("2026-01-01T00:00:00Z"),
            request: "request-value",
            response: "response-value"
          }
        ])
    end
  end

  describe '#list_logs (GET /logs, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/logs")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          logs: [
            {
              time: "2026-01-01T00:00:00Z",
              clientTime: "2026-01-01T00:00:00Z",
              message: "message-value",
              mtgSessionId: "mtg_session_id-value",
              userSessionId: "user_session_id-value",
              peerId: "peer_id-value",
              domainName: "domain_name-value",
              level: 1,
              code: 1
            }
          ]
        }))

      result = api.list_logs()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListLogs200Response)
        expect(result.to_hash).to eq({
          logs: [
            {
              time: Time.parse("2026-01-01T00:00:00Z"),
              clientTime: Time.parse("2026-01-01T00:00:00Z"),
              message: "message-value",
              mtgSessionId: "mtg_session_id-value",
              userSessionId: "user_session_id-value",
              peerId: "peer_id-value",
              domainName: "domain_name-value",
              level: 1,
              code: 1
            }
          ]
        })
    end
  end
end
