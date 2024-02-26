# Daily::MeetingTokensApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_meeting_token**](MeetingTokensApi.md#create_meeting_token) | **POST** /meeting-tokens | Creates a meeting token |


## create_meeting_token

> <MeetingTokenResponse> create_meeting_token(opts)

Creates a meeting token

A POST request to /meeting-tokens creates a new meeting token. This token can be used to authenticate a user for a specific meeting. 

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::MeetingTokensApi.new
opts = {
  meeting_token_request: Daily::MeetingTokenRequest.new # MeetingTokenRequest | A room object
}

begin
  # Creates a meeting token
  result = api_instance.create_meeting_token(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token: #{e}"
end
```

#### Using the create_meeting_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeetingTokenResponse>, Integer, Hash)> create_meeting_token_with_http_info(opts)

```ruby
begin
  # Creates a meeting token
  data, status_code, headers = api_instance.create_meeting_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeetingTokenResponse>
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meeting_token_request** | [**MeetingTokenRequest**](MeetingTokenRequest.md) | A room object | [optional] |

### Return type

[**MeetingTokenResponse**](MeetingTokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

