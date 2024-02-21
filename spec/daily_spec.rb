# frozen_string_literal: true

describe Daily do
  after(:each) do
    Daily.instance_variable_set(:@configuration, nil)
  end

  it 'should set the configuration with a config block' do
    Daily.configure do |config|
      config.api_key = 'test_api_key'
      config.domain = 'test_domain'
    end

    expect(Daily.api_key).to eq('test_api_key')
    expect(Daily.auth_token).to eq('test_domain')
  end
end
