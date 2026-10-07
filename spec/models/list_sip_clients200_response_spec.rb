require 'spec_helper'

# ListSipClients200Response is new in 1.1.0.
describe Daily::ListSipClients200Response do
  let(:input) do
    {
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
    }
  end
  let(:expected_hash) do
    {
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
    }
  end
  let(:expected_json) do
    {
      sip_clients: [
        {
          username: "username-value",
          domain: "domain-value",
          sip_uri: "sip_uri-value",
          expires_at: "2026-01-01 00:00:00 UTC"
        }
      ],
      total: 1,
      limit: 1,
      offset: 1
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
