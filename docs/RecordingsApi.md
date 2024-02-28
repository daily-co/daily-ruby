# Daily::RecordingsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_recording**](RecordingsApi.md#delete_recording) | **DELETE** /recordings/{recording_id} | recordings/:id |
| [**get_recording_info**](RecordingsApi.md#get_recording_info) | **GET** /recordings/{recording_id} | recordings/:id |
| [**get_recording_link**](RecordingsApi.md#get_recording_link) | **GET** /recordings/{recording_id}/access-link | recordings/:id/access-link |
| [**list_recordings**](RecordingsApi.md#list_recordings) | **GET** /recordings | /recordings |


## delete_recording

> Object delete_recording(recording_id)

recordings/:id

Delete a recording

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

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 

begin
  # recordings/:id
  result = api_instance.delete_recording(recording_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording: #{e}"
end
```

#### Using the delete_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_recording_with_http_info(recording_id)

```ruby
begin
  # recordings/:id
  data, status_code, headers = api_instance.delete_recording_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recording_info

> <GetRecordingInfo200Response> get_recording_info(recording_id)

recordings/:id

Get info about a recording

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

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 

begin
  # recordings/:id
  result = api_instance.get_recording_info(recording_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_info: #{e}"
end
```

#### Using the get_recording_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecordingInfo200Response>, Integer, Hash)> get_recording_info_with_http_info(recording_id)

```ruby
begin
  # recordings/:id
  data, status_code, headers = api_instance.get_recording_info_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecordingInfo200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |

### Return type

[**GetRecordingInfo200Response**](GetRecordingInfo200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recording_link

> <GetRecordingLink200Response> get_recording_link(recording_id)

recordings/:id/access-link

Generate an access link for a recording

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

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 

begin
  # recordings/:id/access-link
  result = api_instance.get_recording_link(recording_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_link: #{e}"
end
```

#### Using the get_recording_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecordingLink200Response>, Integer, Hash)> get_recording_link_with_http_info(recording_id)

```ruby
begin
  # recordings/:id/access-link
  data, status_code, headers = api_instance.get_recording_link_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecordingLink200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |

### Return type

[**GetRecordingLink200Response**](GetRecordingLink200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_recordings

> <ListRecordings200Response> list_recordings(opts)

/recordings

List recordings

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

api_instance = Daily::RecordingsApi.new
opts = {
  limit: 56, # Integer | 
  ending_before: 'ending_before_example', # String | 
  starting_after: 'starting_after_example', # String | 
  room_name: 'room_name_example' # String | 
}

begin
  # /recordings
  result = api_instance.list_recordings(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->list_recordings: #{e}"
end
```

#### Using the list_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRecordings200Response>, Integer, Hash)> list_recordings_with_http_info(opts)

```ruby
begin
  # /recordings
  data, status_code, headers = api_instance.list_recordings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRecordings200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->list_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **starting_after** | **String** |  | [optional] |
| **room_name** | **String** |  | [optional] |

### Return type

[**ListRecordings200Response**](ListRecordings200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

