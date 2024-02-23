# Load the gem
require 'daily-ruby'

# Setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = ENV['DAILY_API_KEY']
end

room_api_instance = Daily::RoomApi.new
opts = {
  room_request: Daily::RoomRequest.new( privacy: 'private' ) # RoomRequest | A room object
}

begin
  # Create a new room
  room = room_api_instance.create_room(opts)
  p room
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->create_room: #{e}"
end

meeting_token_api_instance = Daily::MeetingTokensApi.new

opts = {
  meeting_token_request: { properties: { room_name: room.name } }  # MeetingTokenRequest | A meeting token object
}

begin
  # Create a new meeting token
  meeting_token = meeting_token_api_instance.create_meeting_token(opts)
  p meeting_token
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token: #{e}"
end
