# Daily::MeetingsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_individual_meeting_info**](MeetingsApi.md#get_individual_meeting_info) | **GET** /meetings/{meeting} | /meetings/:meeting |
| [**get_meeting_info**](MeetingsApi.md#get_meeting_info) | **GET** /meetings | /meetings |
| [**get_meeting_participants**](MeetingsApi.md#get_meeting_participants) | **GET** /meetings/{meeting}/participants | /meetings/:meeting/participants |


## get_individual_meeting_info

> <MeetingsMeetingGetRes> get_individual_meeting_info(meeting)

/meetings/:meeting

retrieve info about a particular meeting

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

api_instance = Daily::MeetingsApi.new
meeting = 'meeting_example' # String | the ID of the meeting session

begin
  # /meetings/:meeting
  result = api_instance.get_individual_meeting_info(meeting)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_individual_meeting_info: #{e}"
end
```

#### Using the get_individual_meeting_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeetingsMeetingGetRes>, Integer, Hash)> get_individual_meeting_info_with_http_info(meeting)

```ruby
begin
  # /meetings/:meeting
  data, status_code, headers = api_instance.get_individual_meeting_info_with_http_info(meeting)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeetingsMeetingGetRes>
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_individual_meeting_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meeting** | **String** | the ID of the meeting session |  |

### Return type

[**MeetingsMeetingGetRes**](MeetingsMeetingGetRes.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meeting_info

> <GetMeetingInfo200Response> get_meeting_info(opts)

/meetings

retrieve meeting analytics

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

api_instance = Daily::MeetingsApi.new
opts = {
  room: 'room_example', # String | 
  timeframe_start: 56, # Integer | 
  timeframe_end: 56, # Integer | 
  limit: 56, # Integer | 
  starting_after: 'starting_after_example', # String | 
  ending_before: 'ending_before_example', # String | 
  ongoing: true, # Boolean | 
  no_participants: true # Boolean | 
}

begin
  # /meetings
  result = api_instance.get_meeting_info(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_meeting_info: #{e}"
end
```

#### Using the get_meeting_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMeetingInfo200Response>, Integer, Hash)> get_meeting_info_with_http_info(opts)

```ruby
begin
  # /meetings
  data, status_code, headers = api_instance.get_meeting_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMeetingInfo200Response>
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_meeting_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room** | **String** |  | [optional] |
| **timeframe_start** | **Integer** |  | [optional] |
| **timeframe_end** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **starting_after** | **String** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **ongoing** | **Boolean** |  | [optional] |
| **no_participants** | **Boolean** |  | [optional] |

### Return type

[**GetMeetingInfo200Response**](GetMeetingInfo200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meeting_participants

> <MeetingParticipantsGetRes> get_meeting_participants(meeting, opts)

/meetings/:meeting/participants

retrieve info about the participants in a particular meeting

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

api_instance = Daily::MeetingsApi.new
meeting = 'meeting_example' # String | the ID of the meeting session
opts = {
  limit: 56, # Integer | the largest number of participant records to return
  joined_after: 'joined_after_example', # String | limit to participants who joined after the given participant, identified by `participant_id`
  joined_before: 'joined_before_example' # String | limit to participants who joined before the given participant, identified by `participant_id`
}

begin
  # /meetings/:meeting/participants
  result = api_instance.get_meeting_participants(meeting, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_meeting_participants: #{e}"
end
```

#### Using the get_meeting_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeetingParticipantsGetRes>, Integer, Hash)> get_meeting_participants_with_http_info(meeting, opts)

```ruby
begin
  # /meetings/:meeting/participants
  data, status_code, headers = api_instance.get_meeting_participants_with_http_info(meeting, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeetingParticipantsGetRes>
rescue Daily::ApiError => e
  puts "Error when calling MeetingsApi->get_meeting_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meeting** | **String** | the ID of the meeting session |  |
| **limit** | **Integer** | the largest number of participant records to return | [optional] |
| **joined_after** | **String** | limit to participants who joined after the given participant, identified by &#x60;participant_id&#x60; | [optional] |
| **joined_before** | **String** | limit to participants who joined before the given participant, identified by &#x60;participant_id&#x60; | [optional] |

### Return type

[**MeetingParticipantsGetRes**](MeetingParticipantsGetRes.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

