require 'spec_helper'

# One request-and-response test for each DialinApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::DialinApi do
  let(:api) { daily_api(described_class) }

  describe '#create_sip_client (POST /sip-clients, new in 1.1.0)' do
    it 'sends the request and reads the response' do
      create_sip_client_request = Daily::CreateSipClientRequest.build_from_hash({
              username: "username-value",
              password: "password-value",
              expires_in_seconds: 1
            })
      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-clients")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          password: "password-value",
          expires_at: "2026-01-01T00:00:00Z"
        }))

      result = api.create_sip_client(create_sip_client_request)

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::CreateSipClient200Response)
        expect(result.to_hash).to eq({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          password: "password-value",
          expires_at: Time.parse("2026-01-01T00:00:00Z")
        })
    end
  end

  describe '#create_sip_trunk (POST /sip-trunk, new in 1.1.0)' do
    it 'sends the request and reads the response' do
      create_sip_trunk_request = Daily::CreateSipTrunkRequest.build_from_hash({
              trunk_name: "trunk_name-value",
              description: "description-value",
              room_template: {
                "key" => {
                  key: "value"
                }
              },
              notification: {
                webhook_url: "webhook_url-value",
                hmac: "hmac-value"
              },
              trunk_config: {
                allowed_ips: [
                  "value"
                ],
                credential: {
                  username: "username-value",
                  password: "password-value"
                },
                is_open: true,
                exp_offset: 1
              },
              enabled: true
            })
      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-trunk")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        }))

      result = api.create_sip_trunk(create_sip_trunk_request)

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::CreateSipTrunk200Response)
        expect(result.to_hash).to eq({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        })
    end
  end

  describe '#delete_sip_client (DELETE /sip-clients/{username}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-clients/test-username")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "status-value"
        }))

      result = api.delete_sip_client('test-username')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteSipClient200Response)
        expect(result.to_hash).to eq({
          status: "status-value"
        })
    end
  end

  describe '#delete_sip_trunk (DELETE /sip-trunk/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-trunk/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "ok"
        }))

      result = api.delete_sip_trunk('test-id')

      expect(stub).to have_been_requested.once
      # No response schema in the spec, so nothing is returned.
        expect(result).to be_nil
    end
  end

  describe '#get_sip_client (GET /sip-clients/{username}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-clients/test-username")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          expires_at: "2026-01-01T00:00:00Z"
        }))

      result = api.get_sip_client('test-username')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListSipClients200ResponseSipClientsInner)
        expect(result.to_hash).to eq({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          expires_at: Time.parse("2026-01-01T00:00:00Z")
        })
    end
  end

  describe '#get_sip_trunk (GET /sip-trunk/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-trunk/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        }))

      result = api.get_sip_trunk('test-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListSipTrunks200ResponseDataInner)
        expect(result.to_hash).to eq({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        })
    end
  end

  describe '#list_sip_clients (GET /sip-clients, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-clients")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          sip_clients: [
            {
              username: "username-value",
              domain: "domain-value",
              sip_uri: "sip_uri-value",
              expires_at: "2026-01-01T00:00:00Z"
            }
          ],
          total: 1,
          limit: 1,
          offset: 1
        }))

      result = api.list_sip_clients()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListSipClients200Response)
        expect(result.to_hash).to eq({
          sip_clients: [
            {
              username: "username-value",
              domain: "domain-value",
              sip_uri: "sip_uri-value",
              expires_at: Time.parse("2026-01-01T00:00:00Z")
            }
          ],
          total: 1,
          limit: 1,
          offset: 1
        })
    end
  end

  describe '#list_sip_trunks (GET /sip-trunk, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-trunk")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          total_count: 1,
          data: [
            {
              id: "id-value",
              description: "description-value",
              trunk_name: "trunk_name-value",
              sip_uri: "sip_uri-value",
              enabled: true,
              config: {
                "key" => {
                  key: "value"
                }
              }
            }
          ]
        }))

      result = api.list_sip_trunks()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListSipTrunks200Response)
        expect(result.to_hash).to eq({
          total_count: 1,
          data: [
            {
              id: "id-value",
              description: "description-value",
              trunk_name: "trunk_name-value",
              sip_uri: "sip_uri-value",
              enabled: true,
              config: {
                "key" => {
                  key: "value"
                }
              }
            }
          ]
        })
    end
  end

  describe '#rotate_sip_client (POST /sip-clients/{username}/rotate, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-clients/test-username/rotate")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          password: "password-value",
          expires_at: "2026-01-01T00:00:00Z"
        }))

      result = api.rotate_sip_client('test-username')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::RotateSipClient200Response)
        expect(result.to_hash).to eq({
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          password: "password-value",
          expires_at: Time.parse("2026-01-01T00:00:00Z")
        })
    end
  end

  describe '#update_sip_trunk (PUT /sip-trunk/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do
      update_sip_trunk_request = Daily::UpdateSipTrunkRequest.build_from_hash({
              description: "description-value",
              room_template: {
                "key" => {
                  key: "value"
                }
              },
              notification: {
                webhook_url: "webhook_url-value",
                hmac: "hmac-value"
              },
              trunk_config: {
                allowed_ips: [
                  "value"
                ],
                credential: {
                  username: "username-value",
                  password: "password-value"
                },
                is_open: true,
                exp_offset: 1
              },
              enabled: true
            })
      stub = stub_request(:put, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/sip-trunk/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        }))

      result = api.update_sip_trunk('test-id', update_sip_trunk_request)

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListSipTrunks200ResponseDataInner)
        expect(result.to_hash).to eq({
          id: "id-value",
          description: "description-value",
          trunk_name: "trunk_name-value",
          sip_uri: "sip_uri-value",
          enabled: true,
          config: {
            "key" => {
              key: "value"
            }
          }
        })
    end
  end
end
