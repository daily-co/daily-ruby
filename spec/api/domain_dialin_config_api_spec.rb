require 'spec_helper'

# One request-and-response test for each DomainDialinConfigApi operation that is new in
# 1.1.0 or whose return type changed. Bodies are sample values built from
# the spec's schemas.
describe Daily::DomainDialinConfigApi do
  let(:api) { daily_api(described_class) }

  describe '#create_domain_dial_config_info (POST /domain-dialin-config, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:post, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/domain-dialin-config")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }))

      result = api.create_domain_dial_config_info()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DomainDialinConfigInfoRes)
        expect(result.to_hash).to eq({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        })
    end
  end

  describe '#delete_domain_dialin_config (DELETE /domain-dialin-config/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:delete, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/domain-dialin-config/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          status: "status-value"
        }))

      result = api.delete_domain_dialin_config('test-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DeleteDomainDialinConfig200Response)
        expect(result.to_hash).to eq({
          status: "status-value"
        })
    end
  end

  describe '#get_domain_dialin_config_info (GET /domain-dialin-config/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/domain-dialin-config/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }))

      result = api.get_domain_dialin_config_info('test-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DomainDialinConfigInfoRes)
        expect(result.to_hash).to eq({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        })
    end
  end

  describe '#list_domain_dialin_configs (GET /domain-dialin-config, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:get, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/domain-dialin-config")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          total_count: 1,
          data: [
            {
              id: "id-value",
              type: "pinless_dialin",
              config: {
                type: "pin_dialin",
                phone_number: "phone_number-value",
                name_prefix: "name_prefix-value",
                hmac: "hmac-value",
                room_creation_api: "room_creation_api-value",
                hold_music_url: "hold_music_url-value",
                timeout_config: {
                  message: "message-value"
                },
                ivr_greeting: {
                  message: "message-value"
                }
              }
            }
          ]
        }))

      result = api.list_domain_dialin_configs()

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::ListDomainDialinConfigs200Response)
        expect(result.to_hash).to eq({
          total_count: 1,
          data: [
            {
              id: "id-value",
              type: "pinless_dialin",
              config: {
                type: "pin_dialin",
                phone_number: "phone_number-value",
                name_prefix: "name_prefix-value",
                hmac: "hmac-value",
                room_creation_api: "room_creation_api-value",
                hold_music_url: "hold_music_url-value",
                timeout_config: {
                  message: "message-value"
                },
                ivr_greeting: {
                  message: "message-value"
                }
              }
            }
          ]
        })
    end
  end

  describe '#update_domain_dial_config_info (PUT /domain-dialin-config/{id}, new in 1.1.0)' do
    it 'sends the request and reads the response' do

      stub = stub_request(:put, %r{\A#{Regexp.escape("#{DailySpecHelpers::BASE}/domain-dialin-config/test-id")}(\?.*)?\z})
        .with(headers: { 'Authorization' => "Bearer #{DailySpecHelpers::TEST_KEY}" })
        .to_return(json_response({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        }))

      result = api.update_domain_dial_config_info('test-id')

      expect(stub).to have_been_requested.once
      expect(result).to be_a(Daily::DomainDialinConfigInfoRes)
        expect(result.to_hash).to eq({
          id: "id-value",
          type: "pinless_dialin",
          config: {
            type: "pin_dialin",
            phone_number: "phone_number-value",
            name_prefix: "name_prefix-value",
            hmac: "hmac-value",
            room_creation_api: "room_creation_api-value",
            hold_music_url: "hold_music_url-value",
            timeout_config: {
              message: "message-value"
            },
            ivr_greeting: {
              message: "message-value"
            }
          }
        })
    end
  end
end
