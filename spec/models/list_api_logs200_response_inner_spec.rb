require 'spec_helper'

# ListAPILogs200ResponseInner is new in 1.1.0.
describe Daily::ListAPILogs200ResponseInner do
  let(:input) do
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
  end
  let(:expected_hash) do
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
  end
  let(:expected_json) do
    {
      id: "id-value",
      userId: "user_id-value",
      domainId: "domain_id-value",
      source: "source-value",
      ip: "ip-value",
      method: "method-value",
      url: "url-value",
      status: 1,
      createdAt: "2026-01-01 00:00:00 UTC",
      request: "request-value",
      response: "response-value"
    }
  end

  # Time fields come back as Time objects. to_json writes them with
  # Time#to_s, which is how the generator has always done it.
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
