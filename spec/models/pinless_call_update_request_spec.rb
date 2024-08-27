=begin
#Daily API

#The Daily REST API offers the ability to manage the following:  - Overall Domain Configuration - Individual Room creation and config management  - Meeting token creation and validation - Recording and compositing management  - Meeting analytics - Logs and metrics - Real-time presence  Please reach out to help@daily.co if we can help with anything

The version of the OpenAPI document: 1.1.1
Contact: help@daily.co
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Daily::PinlessCallUpdateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Daily::PinlessCallUpdateRequest do
  let(:instance) { Daily::PinlessCallUpdateRequest.new }

  describe 'test an instance of PinlessCallUpdateRequest' do
    it 'should create an instance of PinlessCallUpdateRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Daily::PinlessCallUpdateRequest)
    end
  end

  describe 'test attribute "call_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "call_domain"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sip_uri"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
