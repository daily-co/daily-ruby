# Load the gem
require 'daily-ruby'

# Setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = ENV['DAILY_API_KEY']
end

room_api_instance = Daily::RoomApi.new
opts = {
  room_request: Daily::RoomRequest.new(
    privacy: 'private',
    properties: Daily::RoomRequestProperties.new({
      exp: (Time.now + (3600 * 2)).to_i, # Delete the room after two hours
      enable_mesh_sfu: true,
      sfu_switchover: 0.5
    })
  )
}

begin
  # Create a new room
  room = room_api_instance.create_room(opts)
  p room
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->create_room: #{e}"
end

meeting_token_api_instance = Daily::MeetingTokensApi.new

# Create an owner meeting_token for the room with privacy set to private and
# the expiration set to 2 hours from now.

opts = {
  meeting_token_request: Daily::MeetingTokenRequest.new({
    properties: Daily::MeetingTokenRequestProperties.new({
      is_owner: true,
      room_name: room.name,
      exp: (Time.now + (3600 * 2)).to_i # Expire the token after two hours
    })
  })
}


begin
  # Create a new meeting token
  meeting_token = meeting_token_api_instance.create_meeting_token(opts)
  p meeting_token
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token: #{e}"
end


p "Room url: " + room.url
p "Meeting token: " + meeting_token.token
