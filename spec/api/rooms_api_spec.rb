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

# Unit tests for Daily::RoomsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RoomsApi' do
  before do
    # run before each test
    @api_instance = Daily::RoomsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoomsApi' do
    it 'should create an instance of RoomsApi' do
      expect(@api_instance).to be_instance_of(Daily::RoomsApi)
    end
  end

  # unit tests for create_room
  # /rooms
  # Create a room
  # @param [Hash] opts the optional parameters
  # @option opts [CreateRoomRequest] :create_room_request 
  # @return [CreateRoom200Response]
  describe 'create_room test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_room
  # rooms/:name
  # Delete a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_room test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for eject
  # rooms/:name/eject
  # Ejects participants from a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [EjectRequest] :eject_request 
  # @return [Eject200Response]
  describe 'eject test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_room_config
  # rooms/:name
  # Get info about a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [RoomsRoomNameGetRes]
  describe 'get_room_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_room_presence
  # rooms/:name/presence
  # Get a presence snapshot for a room
  # @param room_name The name of the room
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Sets the number of participants returned.
  # @option opts [String] :user_id Returns presence for the user with the given userId, if available. The userId is specified via a [meeting token](/reference/rest-api/meeting-tokens/config#user_id).
  # @option opts [String] :user_name Returns presence for the user with the given name, if available.
  # @return [RoomsRoomNamePresenceGetRes]
  describe 'get_room_presence test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_session_data
  # rooms/:name/get-session-data
  # Gets meeting session data
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_session_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_rooms
  # /rooms
  # List rooms
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Sets the number of rooms listed
  # @option opts [String] :ending_before Returns room objects created before a provided room  id
  # @option opts [String] :starting_after Returns room objects created after a provided room id
  # @return [ListRooms200Response]
  describe 'list_rooms test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_livestreaming_start
  # rooms/:name/live-streaming/start
  # Start a live stream in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [DailyLiveStreamingOptions] :daily_live_streaming_options 
  # @return [nil]
  describe 'room_livestreaming_start test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_livestreaming_stop
  # rooms/:name/live-streaming/stop
  # Stop a live stream in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'room_livestreaming_stop test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_livestreaming_update
  # rooms/:name/live-streaming/update
  # Update a live stream in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [DailyLiveStreamingOptions] :daily_live_streaming_options 
  # @return [nil]
  describe 'room_livestreaming_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_recordings_start
  # rooms/:name/recordings/start
  # Start a recording in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [RecordingStreamingOptions] :recording_streaming_options 
  # @return [nil]
  describe 'room_recordings_start test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_recordings_stop
  # rooms/:name/recordings/stop
  # Stop a recording in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'room_recordings_stop test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_recordings_update
  # rooms/:name/recordings/update
  # Update a recording in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [DailyStreamingOptions] :daily_streaming_options 
  # @return [nil]
  describe 'room_recordings_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_transcription_start
  # rooms/:name/transcription/start
  # Start a transcription in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [TranscriptionProperties] :transcription_properties 
  # @return [nil]
  describe 'room_transcription_start test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for room_transcription_stop
  # rooms/:name/transcription/stop
  # Stop a transcription in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'room_transcription_stop test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_app_message
  # rooms/:name/send-app-message
  # Send a message to participants in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [SendAppMessageRequest] :send_app_message_request 
  # @return [nil]
  describe 'send_app_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for set_room_config
  # rooms/:name
  # Set a room&#39;s privacy and config properties
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [SetRoomConfigRequest] :set_room_config_request 
  # @return [nil]
  describe 'set_room_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for set_session_data
  # rooms/:name/set-session-data
  # Sets meeting session data
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [SetSessionDataRequest] :set_session_data_request 
  # @return [nil]
  describe 'set_session_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_permissions
  # rooms/:name/update-permissions
  # Modifies permissions for one or more participants in a room
  # @param room_name 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdatePermissionsRequest] :update_permissions_request 
  # @return [nil]
  describe 'update_permissions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
