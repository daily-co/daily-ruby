# Daily::TranscriptApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_transcript**](TranscriptApi.md#delete_transcript) | **DELETE** /transcript/{transcriptId} | transcript/:id |
| [**get_transcript_info**](TranscriptApi.md#get_transcript_info) | **GET** /transcript/{transcriptId} | transcript/:transcriptId |
| [**get_transcript_link**](TranscriptApi.md#get_transcript_link) | **GET** /transcript/{transcriptId}/access-link | transcript/:id/access-link |
| [**list_transcript**](TranscriptApi.md#list_transcript) | **GET** /transcript | /transcript |


## delete_transcript

> <DeleteTranscript200Response> delete_transcript(transcript_id)

transcript/:id

Delete a transcript

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

api_instance = Daily::TranscriptApi.new
transcript_id = 'transcript_id_example' # String | 

begin
  # transcript/:id
  result = api_instance.delete_transcript(transcript_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->delete_transcript: #{e}"
end
```

#### Using the delete_transcript_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTranscript200Response>, Integer, Hash)> delete_transcript_with_http_info(transcript_id)

```ruby
begin
  # transcript/:id
  data, status_code, headers = api_instance.delete_transcript_with_http_info(transcript_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTranscript200Response>
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->delete_transcript_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** |  |  |

### Return type

[**DeleteTranscript200Response**](DeleteTranscript200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transcript_info

> <GetTranscriptInfo200Response> get_transcript_info(transcript_id)

transcript/:transcriptId

Get info about a Transcript

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

api_instance = Daily::TranscriptApi.new
transcript_id = 'transcript_id_example' # String | 

begin
  # transcript/:transcriptId
  result = api_instance.get_transcript_info(transcript_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->get_transcript_info: #{e}"
end
```

#### Using the get_transcript_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTranscriptInfo200Response>, Integer, Hash)> get_transcript_info_with_http_info(transcript_id)

```ruby
begin
  # transcript/:transcriptId
  data, status_code, headers = api_instance.get_transcript_info_with_http_info(transcript_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTranscriptInfo200Response>
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->get_transcript_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** |  |  |

### Return type

[**GetTranscriptInfo200Response**](GetTranscriptInfo200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transcript_link

> <GetTranscriptLink200Response> get_transcript_link(transcript_id)

transcript/:id/access-link

Generate an access link for a transcript

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

api_instance = Daily::TranscriptApi.new
transcript_id = 'transcript_id_example' # String | 

begin
  # transcript/:id/access-link
  result = api_instance.get_transcript_link(transcript_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->get_transcript_link: #{e}"
end
```

#### Using the get_transcript_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTranscriptLink200Response>, Integer, Hash)> get_transcript_link_with_http_info(transcript_id)

```ruby
begin
  # transcript/:id/access-link
  data, status_code, headers = api_instance.get_transcript_link_with_http_info(transcript_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTranscriptLink200Response>
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->get_transcript_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** |  |  |

### Return type

[**GetTranscriptLink200Response**](GetTranscriptLink200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transcript

> <ListTranscript200Response> list_transcript(opts)

/transcript

List transcripts

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

api_instance = Daily::TranscriptApi.new
opts = {
  limit: 56, # Integer | 
  ending_before: 'ending_before_example', # String | 
  starting_after: 'starting_after_example', # String | 
  room_id: 'room_id_example', # String | 
  mtg_session_id: 'mtg_session_id_example' # String | 
}

begin
  # /transcript
  result = api_instance.list_transcript(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->list_transcript: #{e}"
end
```

#### Using the list_transcript_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTranscript200Response>, Integer, Hash)> list_transcript_with_http_info(opts)

```ruby
begin
  # /transcript
  data, status_code, headers = api_instance.list_transcript_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTranscript200Response>
rescue Daily::ApiError => e
  puts "Error when calling TranscriptApi->list_transcript_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **starting_after** | **String** |  | [optional] |
| **room_id** | **String** |  | [optional] |
| **mtg_session_id** | **String** |  | [optional] |

### Return type

[**ListTranscript200Response**](ListTranscript200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

