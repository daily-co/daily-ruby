=begin
#Daily

#The official library for communicating with the Daily REST API.

The version of the OpenAPI document: 0.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Daily::MeetingTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MeetingTokensApi' do
  before do
    # run before each test
    @api_instance = Daily::MeetingTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MeetingTokensApi' do
    it 'should create an instance of MeetingTokensApi' do
      expect(@api_instance).to be_instance_of(Daily::MeetingTokensApi)
    end
  end

  # unit tests for create_meeting_token
  # Creates a meeting token
  # A POST request to /meeting-tokens creates a new meeting token.
  # @param [Hash] opts the optional parameters
  # @option opts [MeetingTokenRequest] :meeting_token_request A room object
  # @return [CreateMeetingToken200Response]
  describe 'create_meeting_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end