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

# Unit tests for Daily::TranscriptApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TranscriptApi' do
  before do
    # run before each test
    @api_instance = Daily::TranscriptApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TranscriptApi' do
    it 'should create an instance of TranscriptApi' do
      expect(@api_instance).to be_instance_of(Daily::TranscriptApi)
    end
  end

  # unit tests for delete_transcript
  # transcript/:id
  # Delete a transcript
  # @param transcript_id 
  # @param [Hash] opts the optional parameters
  # @return [DeleteTranscript200Response]
  describe 'delete_transcript test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_transcript_info
  # transcript/:transcriptId
  # Get info about a Transcript
  # @param transcript_id 
  # @param [Hash] opts the optional parameters
  # @return [GetTranscriptInfo200Response]
  describe 'get_transcript_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_transcript_link
  # transcript/:id/access-link
  # Generate an access link for a transcript
  # @param transcript_id 
  # @param [Hash] opts the optional parameters
  # @return [GetTranscriptLink200Response]
  describe 'get_transcript_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_transcript
  # /transcript
  # List transcripts
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit 
  # @option opts [String] :ending_before 
  # @option opts [String] :starting_after 
  # @option opts [String] :room_id 
  # @option opts [String] :mtg_session_id 
  # @return [ListTranscript200Response]
  describe 'list_transcript test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
