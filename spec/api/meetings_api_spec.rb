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

# Unit tests for Daily::MeetingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MeetingsApi' do
  before do
    # run before each test
    @api_instance = Daily::MeetingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MeetingsApi' do
    it 'should create an instance of MeetingsApi' do
      expect(@api_instance).to be_instance_of(Daily::MeetingsApi)
    end
  end

  # unit tests for get_individual_meeting_info
  # /meetings/:meeting
  # retrieve info about a particular meeting
  # @param meeting the ID of the meeting session
  # @param [Hash] opts the optional parameters
  # @return [MeetingsMeetingGetRes]
  describe 'get_individual_meeting_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_meeting_info
  # /meetings
  # retrieve meeting analytics
  # @param [Hash] opts the optional parameters
  # @option opts [String] :room 
  # @option opts [Integer] :timeframe_start 
  # @option opts [Integer] :timeframe_end 
  # @option opts [Integer] :limit 
  # @option opts [String] :starting_after 
  # @option opts [String] :ending_before 
  # @option opts [Boolean] :ongoing 
  # @option opts [Boolean] :no_participants 
  # @return [GetMeetingInfo200Response]
  describe 'get_meeting_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_meeting_participants
  # /meetings/:meeting/participants
  # retrieve info about the participants in a particular meeting
  # @param meeting the ID of the meeting session
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit the largest number of participant records to return
  # @option opts [String] :joined_after limit to participants who joined after the given participant, identified by &#x60;participant_id&#x60;
  # @option opts [String] :joined_before limit to participants who joined before the given participant, identified by &#x60;participant_id&#x60;
  # @return [MeetingParticipantsGetRes]
  describe 'get_meeting_participants test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end