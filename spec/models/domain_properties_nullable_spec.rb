require "spec_helper"

# Nullable fields: unset means not sent, an explicit nil means JSON null.
# Moved here from the old generated stub file.
describe Daily::DomainProperties do
  describe 'test attribute "meeting_join_hook"' do
    it 'is not sent when unset' do
      expect(Daily::DomainProperties.new.to_hash).not_to have_key(:meeting_join_hook)
    end

    it 'is sent when set' do
      expect(Daily::DomainProperties.new(meeting_join_hook: 'https://example.com/hook').to_hash[:meeting_join_hook]).to eq('https://example.com/hook')
    end

    it 'is sent as null when set to nil, so a saved value can be cleared' do
      hash = Daily::DomainProperties.new(meeting_join_hook: nil).to_hash
      expect(hash).to have_key(:meeting_join_hook)
      expect(hash[:meeting_join_hook]).to be_nil
    end
  end

  describe 'test attribute "geo"' do
    it 'is not sent when unset' do
      expect(Daily::DomainProperties.new.to_hash).not_to have_key(:geo)
    end

    it 'is sent when set' do
      expect(Daily::DomainProperties.new(geo: 'eu-central-1').to_hash[:geo]).to eq('eu-central-1')
    end

    it 'is sent as null when set to nil, so a saved value can be cleared' do
      hash = Daily::DomainProperties.new(geo: nil).to_hash
      expect(hash).to have_key(:geo)
      expect(hash[:geo]).to be_nil
    end
  end

  describe 'test attribute "rtmp_geo"' do
    it 'is not sent when unset' do
      expect(Daily::DomainProperties.new.to_hash).not_to have_key(:rtmp_geo)
    end

    it 'is sent when set' do
      expect(Daily::DomainProperties.new(rtmp_geo: 'us-west-2').to_hash[:rtmp_geo]).to eq('us-west-2')
    end

    it 'is sent as null when set to nil, so a saved value can be cleared' do
      hash = Daily::DomainProperties.new(rtmp_geo: nil).to_hash
      expect(hash).to have_key(:rtmp_geo)
      expect(hash[:rtmp_geo]).to be_nil
    end
  end

  describe 'test attribute "recordings_template"' do
    it 'is not sent when unset' do
      expect(Daily::DomainProperties.new.to_hash).not_to have_key(:recordings_template)
    end

    it 'is sent when set' do
      expect(Daily::DomainProperties.new(recordings_template: '{room_name}/{epoch_time}.mp4').to_hash[:recordings_template]).to eq('{room_name}/{epoch_time}.mp4')
    end

    it 'is sent as null when set to nil, so a saved value can be cleared' do
      hash = Daily::DomainProperties.new(recordings_template: nil).to_hash
      expect(hash).to have_key(:recordings_template)
      expect(hash[:recordings_template]).to be_nil
    end
  end
end
