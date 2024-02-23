=begin
#Daily

#The official library for communicating with the Daily REST API.

The version of the OpenAPI document: 0.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

# Common files
require 'daily-ruby/api_client'
require 'daily-ruby/api_error'
require 'daily-ruby/version'
require 'daily-ruby/configuration'

# Models
require 'daily-ruby/models/create_meeting_token200_response'
require 'daily-ruby/models/meeting_token_request'
require 'daily-ruby/models/meeting_token_request_properties'
require 'daily-ruby/models/meeting_token_request_properties_permissions'
require 'daily-ruby/models/meeting_token_request_properties_permissions_can_admin'
require 'daily-ruby/models/meeting_token_request_properties_permissions_can_send'
require 'daily-ruby/models/room_deleted_response'
require 'daily-ruby/models/room_not_found_response'
require 'daily-ruby/models/room_request'
require 'daily-ruby/models/room_request_properties'
require 'daily-ruby/models/room_response'
require 'daily-ruby/models/server_error_response'

# APIs
require 'daily-ruby/api/meeting_tokens_api'
require 'daily-ruby/api/room_api'

module Daily
  class << self
    # Customize default settings for the SDK using block.
    #   Daily.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
