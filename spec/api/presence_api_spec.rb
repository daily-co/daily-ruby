require 'spec_helper'

# One request-and-response test for each PresenceApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::PresenceApi do
  let(:api) { daily_api(described_class) }

  describe '#get_presence (GET /presence, return type changed in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/presence")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          "key" => [
            {
              room: "room-value",
              id: "id-value",
              userId: "user_id-value",
              userName: "user_name-value",
              mtgSessionId: "mtg_session_id-value",
              joinTime: "2026-01-01T00:00:00Z",
              duration: 1
            }
          ]
        }))

      result = api.get_presence()

      expect(stub).to have_been_requested.once
      # Keys are room names. The client keeps them as symbols.
        expect(result).to be_a(Hash)
        expect(result[:key].first).to be_a(Daily::GetPresence200ResponseValueInner)
        expect(result[:key].map(&:to_hash)).to eq([
          {
            room: "room-value",
            id: "id-value",
            userId: "user_id-value",
            userName: "user_name-value",
            mtgSessionId: "mtg_session_id-value",
            joinTime: Time.parse("2026-01-01T00:00:00Z"),
            duration: 1
          }
        ])
    end
  end
end
