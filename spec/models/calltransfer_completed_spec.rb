require 'spec_helper'

# CalltransferCompleted is new in 1.1.0.
describe Daily::CalltransferCompleted do
  let(:input) do
    {
      version: "version-value",
      type: "calltransfer.completed",
      event_ts: 1.5,
      payload: {
        domain_id: "domain_id-value",
        room: "room-value",
        timestamp: 1,
        session_id: "session_id-value",
        mtg_session_id: "mtg_session_id-value",
        to_endpoint: "to_endpoint-value",
        from_endpoint: "from_endpoint-value",
        is_sip_refer: true,
        completeStatus: "complete_status-value",
        refer_sip_response_code: "refer_sip_response_code-value",
        notify_sip_response_code: "notify_sip_response_code-value"
      }
    }
  end
  let(:expected_hash) do
    {
      version: "version-value",
      type: "calltransfer.completed",
      event_ts: 1.5,
      payload: {
        domain_id: "domain_id-value",
        room: "room-value",
        timestamp: 1,
        session_id: "session_id-value",
        mtg_session_id: "mtg_session_id-value",
        to_endpoint: "to_endpoint-value",
        from_endpoint: "from_endpoint-value",
        is_sip_refer: true,
        completeStatus: "complete_status-value",
        refer_sip_response_code: "refer_sip_response_code-value",
        notify_sip_response_code: "notify_sip_response_code-value"
      }
    }
  end
  let(:expected_json) do
    {
      version: "version-value",
      type: "calltransfer.completed",
      event_ts: 1.5,
      payload: {
        domain_id: "domain_id-value",
        room: "room-value",
        timestamp: 1,
        session_id: "session_id-value",
        mtg_session_id: "mtg_session_id-value",
        to_endpoint: "to_endpoint-value",
        from_endpoint: "from_endpoint-value",
        is_sip_refer: true,
        completeStatus: "complete_status-value",
        refer_sip_response_code: "refer_sip_response_code-value",
        notify_sip_response_code: "notify_sip_response_code-value"
      }
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
