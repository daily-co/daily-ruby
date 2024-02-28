# Daily::BatchRoomsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_room_create**](BatchRoomsApi.md#batch_room_create) | **POST** /batch/rooms | /batch/rooms |
| [**batch_room_delete**](BatchRoomsApi.md#batch_room_delete) | **DELETE** /batch/rooms | /batch/rooms |


## batch_room_create

> <Array<RoomsRoomNameGetRes>> batch_room_create(opts)

/batch/rooms

Create rooms in bulk

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

api_instance = Daily::BatchRoomsApi.new
opts = {
  batch_room_create_request: Daily::BatchRoomCreateRequest.new # BatchRoomCreateRequest | 
}

begin
  # /batch/rooms
  result = api_instance.batch_room_create(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling BatchRoomsApi->batch_room_create: #{e}"
end
```

#### Using the batch_room_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RoomsRoomNameGetRes>>, Integer, Hash)> batch_room_create_with_http_info(opts)

```ruby
begin
  # /batch/rooms
  data, status_code, headers = api_instance.batch_room_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RoomsRoomNameGetRes>>
rescue Daily::ApiError => e
  puts "Error when calling BatchRoomsApi->batch_room_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_room_create_request** | [**BatchRoomCreateRequest**](BatchRoomCreateRequest.md) |  | [optional] |

### Return type

[**Array&lt;RoomsRoomNameGetRes&gt;**](RoomsRoomNameGetRes.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_room_delete

> <BatchRoomDelete200Response> batch_room_delete

/batch/rooms

Delete rooms in bulk

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

api_instance = Daily::BatchRoomsApi.new

begin
  # /batch/rooms
  result = api_instance.batch_room_delete
  p result
rescue Daily::ApiError => e
  puts "Error when calling BatchRoomsApi->batch_room_delete: #{e}"
end
```

#### Using the batch_room_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchRoomDelete200Response>, Integer, Hash)> batch_room_delete_with_http_info

```ruby
begin
  # /batch/rooms
  data, status_code, headers = api_instance.batch_room_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchRoomDelete200Response>
rescue Daily::ApiError => e
  puts "Error when calling BatchRoomsApi->batch_room_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BatchRoomDelete200Response**](BatchRoomDelete200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

