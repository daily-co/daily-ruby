require 'spec_helper'

# 1.0.x returned plain Hashes with symbol keys for many calls. Typed models
# in 1.1.0 keep Hash-style reads working.
describe 'Hash-style access on models' do
  describe Daily::DeleteRoom200Response do
    subject(:result) { described_class.build_from_hash({ deleted: true, name: 'my-room' }) }

    it 'reads with symbol and string keys' do
      expect(result[:deleted]).to eq(true)
      expect(result['deleted']).to eq(true)
      expect(result[:name]).to eq('my-room')
      expect(result['name']).to eq('my-room')
    end

    it 'returns nil for missing keys, like a Hash' do
      expect(result[:nope]).to be_nil
    end

    it 'supports fetch with Hash semantics' do
      expect(result.fetch(:deleted)).to eq(true)
      expect(result.fetch('name')).to eq('my-room')
      expect(result.fetch(:nope, 'default')).to eq('default')
      expect(result.fetch(:nope) { |k| "block #{k}" }).to eq('block nope')
      expect { result.fetch(:nope) }.to raise_error(KeyError, /nope/)
      expect { result.fetch(:a, 1, 2) }.to raise_error(ArgumentError)
    end

    it 'supports key?, has_key?, include? and to_h' do
      expect(result.key?(:deleted)).to eq(true)
      expect(result.has_key?('name')).to eq(true)
      expect(result.include?(:nope)).to eq(false)
      expect(result.to_h).to eq({ deleted: true, name: 'my-room' })
    end

    it 'keeps attribute readers' do
      expect(result.deleted).to eq(true)
      expect(result.name).to eq('my-room')
    end

    it 'returns real JSON from to_json' do
      expect(JSON.parse(result.to_json)).to eq({ 'deleted' => true, 'name' => 'my-room' })
    end
  end

  describe Daily::RoomsRoomNamePresenceGetRes do
    let(:input) do
      {
        total_count: 1,
        data: [{
          id: 'p-1',
          room: 'my-room',
          userId: 'u-1',
          userName: 'Ada',
          mtgSessionId: 'mtg-1',
          joinTime: '2026-10-07T00:00:00.000Z',
          duration: 12
        }]
      }
    end
    subject(:result) { described_class.build_from_hash(input) }

    it 'returns nested models as Hashes, like 1.0.x' do
      expect(result[:data]).to be_a(Array)
      expect(result[:data].first).to be_a(Hash)
      expect(result[:data].first[:mtgSessionId]).to eq('mtg-1')
    end

    it 'supports dig through nested data' do
      expect(result.dig(:data, 0, :userName)).to eq('Ada')
      expect(result.dig(:missing, 0)).to be_nil
    end

    it 'accepts the Ruby attribute name as well as the JSON name' do
      entry = result.data.first
      expect(entry[:mtgSessionId]).to eq('mtg-1')
      expect(entry[:mtg_session_id]).to eq('mtg-1')
      expect(entry['user_name']).to eq('Ada')
    end

    it 'still exposes typed nested models through readers' do
      expect(result.data.first).to be_a(Daily::RoomsRoomNamePresenceGetResDataInner)
      expect(result.data.first.mtg_session_id).to eq('mtg-1')
    end
  end
end
