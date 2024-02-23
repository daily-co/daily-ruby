# Daily::RoomApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_room**](RoomApi.md#create_room) | **POST** /rooms | Create a new room |
| [**delete_room**](RoomApi.md#delete_room) | **DELETE** /rooms/{name} | Delete room |
| [**get_rooms**](RoomApi.md#get_rooms) | **GET** /rooms | Get a list rooms |


## create_room

> <RoomResponse> create_room(opts)

Create a new room

A POST request to /rooms creates a new room.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RoomApi.new
opts = {
  room_request: Daily::RoomRequest.new # RoomRequest | A room object
}

begin
  # Create a new room
  result = api_instance.create_room(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->create_room: #{e}"
end
```

#### Using the create_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomResponse>, Integer, Hash)> create_room_with_http_info(opts)

```ruby
begin
  # Create a new room
  data, status_code, headers = api_instance.create_room_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomResponse>
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->create_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_request** | [**RoomRequest**](RoomRequest.md) | A room object | [optional] |

### Return type

[**RoomResponse**](RoomResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room

> <RoomDeletedResponse> delete_room(name)

Delete room

Delete a Daily room.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RoomApi.new
name = 'name_example' # String | The room name that needs to be deleted

begin
  # Delete room
  result = api_instance.delete_room(name)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->delete_room: #{e}"
end
```

#### Using the delete_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomDeletedResponse>, Integer, Hash)> delete_room_with_http_info(name)

```ruby
begin
  # Delete room
  data, status_code, headers = api_instance.delete_room_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomDeletedResponse>
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->delete_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The room name that needs to be deleted |  |

### Return type

[**RoomDeletedResponse**](RoomDeletedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms

> <Array<RoomResponse>> get_rooms(opts)

Get a list rooms

A GET request to /rooms returns a list of rooms.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RoomApi.new
opts = {
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 56, # Integer | The numbers of items to return.
  ending_before: 'ending_before_example', # String | A cursor for use in pagination. ending_before is an object ID that defines your place in the list.
  starting_after: 'starting_after_example' # String | A cursor for use in pagination. starting_after is an object ID that defines your place in the list.
}

begin
  # Get a list rooms
  result = api_instance.get_rooms(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->get_rooms: #{e}"
end
```

#### Using the get_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RoomResponse>>, Integer, Hash)> get_rooms_with_http_info(opts)

```ruby
begin
  # Get a list rooms
  data, status_code, headers = api_instance.get_rooms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RoomResponse>>
rescue Daily::ApiError => e
  puts "Error when calling RoomApi->get_rooms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The number of items to skip before starting to collect the result set. | [optional] |
| **limit** | **Integer** | The numbers of items to return. | [optional] |
| **ending_before** | **String** | A cursor for use in pagination. ending_before is an object ID that defines your place in the list. | [optional] |
| **starting_after** | **String** | A cursor for use in pagination. starting_after is an object ID that defines your place in the list. | [optional] |

### Return type

[**Array&lt;RoomResponse&gt;**](RoomResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

