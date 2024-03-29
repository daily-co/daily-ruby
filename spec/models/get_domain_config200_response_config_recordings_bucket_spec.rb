=begin
#Daily API

#The Daily REST API offers the ability to manage the following:  - Overall Domain Configuration - Individual Room creation and config management  - Meeting token creation and validation - Recording and compositing management  - Meeting analytics - Logs and metrics - Real-time presence  Please reach out to help@daily.co if we can help with anything

The version of the OpenAPI document: 1.1.1
Contact: help@daily.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Daily::GetDomainConfig200ResponseConfigRecordingsBucket
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Daily::GetDomainConfig200ResponseConfigRecordingsBucket do
  let(:instance) { Daily::GetDomainConfig200ResponseConfigRecordingsBucket.new }

  describe 'test an instance of GetDomainConfig200ResponseConfigRecordingsBucket' do
    it 'should create an instance of GetDomainConfig200ResponseConfigRecordingsBucket' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Daily::GetDomainConfig200ResponseConfigRecordingsBucket)
    end
  end

  describe 'test attribute "bucket_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "bucket_region"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
