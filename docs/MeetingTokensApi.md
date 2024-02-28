# Daily::MeetingTokensApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_meeting_token**](MeetingTokensApi.md#create_meeting_token) | **POST** /meeting-tokens | meeting-tokens |
| [**validate_meeting_token**](MeetingTokensApi.md#validate_meeting_token) | **GET** /meeting-tokens/{meeting_token} | meeting-tokens/:meeting_token |


## create_meeting_token

> <CreateMeetingToken200Response> create_meeting_token(opts)

meeting-tokens

Create a meeting token

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure API key authorization: sec0
  config.api_key['sec0'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sec0'] = 'Bearer'
end

api_instance = Daily::MeetingTokensApi.new
opts = {
  create_meeting_token_request: Daily::CreateMeetingTokenRequest.new # CreateMeetingTokenRequest | 
}

begin
  # meeting-tokens
  result = api_instance.create_meeting_token(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token: #{e}"
end
```

#### Using the create_meeting_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMeetingToken200Response>, Integer, Hash)> create_meeting_token_with_http_info(opts)

```ruby
begin
  # meeting-tokens
  data, status_code, headers = api_instance.create_meeting_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMeetingToken200Response>
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->create_meeting_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_meeting_token_request** | [**CreateMeetingTokenRequest**](CreateMeetingTokenRequest.md) |  | [optional] |

### Return type

[**CreateMeetingToken200Response**](CreateMeetingToken200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_meeting_token

> <ValidateMeetingToken200Response> validate_meeting_token(meeting_token, opts)

meeting-tokens/:meeting_token

Validate meeting tokens

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure API key authorization: sec0
  config.api_key['sec0'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sec0'] = 'Bearer'
end

api_instance = Daily::MeetingTokensApi.new
meeting_token = 'meeting_token_example' # String | 
opts = {
  ignore_nbf: true # Boolean | Ignore the `nbf` in a JWT, if given
}

begin
  # meeting-tokens/:meeting_token
  result = api_instance.validate_meeting_token(meeting_token, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->validate_meeting_token: #{e}"
end
```

#### Using the validate_meeting_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateMeetingToken200Response>, Integer, Hash)> validate_meeting_token_with_http_info(meeting_token, opts)

```ruby
begin
  # meeting-tokens/:meeting_token
  data, status_code, headers = api_instance.validate_meeting_token_with_http_info(meeting_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateMeetingToken200Response>
rescue Daily::ApiError => e
  puts "Error when calling MeetingTokensApi->validate_meeting_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meeting_token** | **String** |  |  |
| **ignore_nbf** | **Boolean** | Ignore the &#x60;nbf&#x60; in a JWT, if given | [optional] |

### Return type

[**ValidateMeetingToken200Response**](ValidateMeetingToken200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

