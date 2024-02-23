# daily-ruby

Daily - the Ruby gem for the Daily

The official library for communicating with the Daily REST API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.0.0
- Package version: 0.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build daily-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./daily-ruby-0.0.0.gem
```

(for development, run `gem install --dev ./daily-ruby-0.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'daily-ruby', '~> 0.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'daily-ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'daily-ruby'

# Setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = Daily::MeetingTokensApi.new
opts = {
  meeting_token_request: Daily::MeetingTokenRequest.new # MeetingTokenRequest | A room object
}

begin
  #Creates a meeting token
  result = api_instance.create_meeting_token(opts)
  p result
rescue Daily::ApiError => e
  puts "Exception when calling MeetingTokensApi->create_meeting_token: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.daily.co/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Daily::MeetingTokensApi* | [**create_meeting_token**](docs/MeetingTokensApi.md#create_meeting_token) | **POST** /meeting-tokens | Creates a meeting token
*Daily::RoomApi* | [**create_room**](docs/RoomApi.md#create_room) | **POST** /rooms | Create a new room
*Daily::RoomApi* | [**delete_room**](docs/RoomApi.md#delete_room) | **DELETE** /rooms/{name} | Delete room
*Daily::RoomApi* | [**get_rooms**](docs/RoomApi.md#get_rooms) | **GET** /rooms | Get a list rooms


## Documentation for Models

 - [Daily::CreateMeetingToken200Response](docs/CreateMeetingToken200Response.md)
 - [Daily::MeetingTokenRequest](docs/MeetingTokenRequest.md)
 - [Daily::MeetingTokenRequestProperties](docs/MeetingTokenRequestProperties.md)
 - [Daily::MeetingTokenRequestPropertiesPermissions](docs/MeetingTokenRequestPropertiesPermissions.md)
 - [Daily::MeetingTokenRequestPropertiesPermissionsCanAdmin](docs/MeetingTokenRequestPropertiesPermissionsCanAdmin.md)
 - [Daily::MeetingTokenRequestPropertiesPermissionsCanSend](docs/MeetingTokenRequestPropertiesPermissionsCanSend.md)
 - [Daily::RoomDeletedResponse](docs/RoomDeletedResponse.md)
 - [Daily::RoomNotFoundResponse](docs/RoomNotFoundResponse.md)
 - [Daily::RoomRequest](docs/RoomRequest.md)
 - [Daily::RoomRequestProperties](docs/RoomRequestProperties.md)
 - [Daily::RoomResponse](docs/RoomResponse.md)
 - [Daily::ServerErrorResponse](docs/ServerErrorResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication

