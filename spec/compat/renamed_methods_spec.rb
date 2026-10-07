require 'spec_helper'

describe 'Renamed and patched methods' do
  describe 'PhoneNumbersApi#purchased_phone_nunbers (deprecated typo alias)' do
    let(:api) { daily_api(Daily::PhoneNumbersApi) }

    before do
      stub_request(:get, "#{DailySpecHelpers::BASE}/purchased-phone-numbers")
        .to_return(json_response({ total_count: 0, data: [] }))
    end

    it 'calls the same endpoint as purchased_phone_numbers' do
      api.purchased_phone_nunbers
      api.purchased_phone_numbers
      expect(a_request(:get, "#{DailySpecHelpers::BASE}/purchased-phone-numbers")).to have_been_made.twice
    end

    it 'has a _with_http_info alias that returns the status code' do
      _data, status, _headers = api.purchased_phone_nunbers_with_http_info
      expect(status).to eq(200)
    end
  end

  describe 'RoomsApi#room_sip_refer' do
    let(:api) { daily_api(Daily::RoomsApi) }
    let(:url) { "#{DailySpecHelpers::BASE}/rooms/my-room/sipRefer" }
    let(:body) { { sessionId: 'sess-1', toEndPoint: 'sip:someone@example.com' } }

    it 'accepts the 1.0.x option name room_sip_call_transfer_request' do
      # The old model also sends its default waitBeforeExtensionDialSec: 0.
      stub = stub_request(:post, url).with(body: hash_including(body)).to_return(json_response({ ok: 'true' }))
      api.room_sip_refer('my-room', room_sip_call_transfer_request: Daily::RoomSipCallTransferRequest.new(session_id: 'sess-1', to_end_point: 'sip:someone@example.com'))
      expect(stub).to have_been_requested
    end

    it 'accepts the new option name room_sip_refer_request' do
      stub = stub_request(:post, url).with(body: body.to_json).to_return(json_response({ ok: 'true' }))
      api.room_sip_refer('my-room', room_sip_refer_request: Daily::RoomSipReferRequest.new(session_id: 'sess-1', to_end_point: 'sip:someone@example.com'))
      expect(stub).to have_been_requested
    end

    it 'reads {"ok": true} into the typed model, and [:ok] works' do
      stub_request(:post, url).to_return(json_response({ ok: true }))
      result = api.room_sip_refer('my-room')
      expect(result).to be_a(Daily::RoomSipCallTransfer200Response)
      expect(result.ok).to eq(true)
      expect(result[:ok]).to eq(true)
      expect(result['ok']).to eq(true)
    end
  end

  describe 'RoomsApi#room_sip_call_transfer' do
    it 'reads {"ok": true} into the typed model, and [:ok] works' do
      stub_request(:post, "#{DailySpecHelpers::BASE}/rooms/my-room/sipCallTransfer").to_return(json_response({ ok: true }))
      result = daily_api(Daily::RoomsApi).room_sip_call_transfer('my-room')
      expect(result).to be_a(Daily::RoomSipCallTransfer200Response)
      expect(result.ok).to eq(true)
      expect(result[:ok]).to eq(true)
    end
  end

  describe 'WebhooksApi#delete_webhook' do
    # The API answers 200 with an empty body, so there is nothing to return.
    let(:api) { daily_api(Daily::WebhooksApi) }

    before do
      stub_request(:delete, "#{DailySpecHelpers::BASE}/webhooks/wh-1").to_return(status: 200, body: '')
    end

    it 'returns nil without raising' do
      expect(api.delete_webhook('wh-1')).to be_nil
    end

    it 'reports status 200 from the _with_http_info variant' do
      data, status, _headers = api.delete_webhook_with_http_info('wh-1')
      expect(data).to be_nil
      expect(status).to eq(200)
    end
  end

  describe 'Daily::ListRooms200ResponseDataInnerConfig (deprecated 1.0.x name)' do
    it 'resolves to RoomConfig' do
      expect(Daily::ListRooms200ResponseDataInnerConfig).to equal(Daily::RoomConfig)
    end

    it 'builds from a hash' do
      config = Daily::ListRooms200ResponseDataInnerConfig.build_from_hash({ start_video_off: true, max_participants: 4 })
      expect(config).to be_a(Daily::RoomConfig)
      expect(config.start_video_off).to eq(true)
      expect(config[:max_participants]).to eq(4)
    end
  end
end
