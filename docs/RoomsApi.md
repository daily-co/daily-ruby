# Daily::RoomsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_room**](RoomsApi.md#create_room) | **POST** /rooms | /rooms |
| [**delete_room**](RoomsApi.md#delete_room) | **DELETE** /rooms/{room_name} | rooms/:name |
| [**eject**](RoomsApi.md#eject) | **POST** /rooms/{room_name}/eject | rooms/:name/eject |
| [**get_room_config**](RoomsApi.md#get_room_config) | **GET** /rooms/{room_name} | rooms/:name |
| [**get_room_presence**](RoomsApi.md#get_room_presence) | **GET** /rooms/{room_name}/presence | rooms/:name/presence |
| [**get_session_data**](RoomsApi.md#get_session_data) | **GET** /rooms/{room_name}/get-session-data | rooms/:name/get-session-data |
| [**list_rooms**](RoomsApi.md#list_rooms) | **GET** /rooms | /rooms |
| [**room_dial_out_send_dtmf**](RoomsApi.md#room_dial_out_send_dtmf) | **POST** /rooms/{room_name}/dialOut/sendDTMF | rooms/:name/dialOut/sendDTMF |
| [**room_dial_out_start**](RoomsApi.md#room_dial_out_start) | **POST** /rooms/{room_name}/dialOut/start | rooms/:name/dialOut/start |
| [**room_dial_out_stop**](RoomsApi.md#room_dial_out_stop) | **POST** /rooms/{room_name}/dialOut/stop | rooms/:name/dialOut/stop |
| [**room_livestreaming_start**](RoomsApi.md#room_livestreaming_start) | **POST** /rooms/{room_name}/live-streaming/start | rooms/:name/live-streaming/start |
| [**room_livestreaming_stop**](RoomsApi.md#room_livestreaming_stop) | **POST** /rooms/{room_name}/live-streaming/stop | rooms/:name/live-streaming/stop |
| [**room_livestreaming_update**](RoomsApi.md#room_livestreaming_update) | **POST** /rooms/{room_name}/live-streaming/update | rooms/:name/live-streaming/update |
| [**room_recordings_start**](RoomsApi.md#room_recordings_start) | **POST** /rooms/{room_name}/recordings/start | rooms/:name/recordings/start |
| [**room_recordings_stop**](RoomsApi.md#room_recordings_stop) | **POST** /rooms/{room_name}/recordings/stop | rooms/:name/recordings/stop |
| [**room_recordings_update**](RoomsApi.md#room_recordings_update) | **POST** /rooms/{room_name}/recordings/update | rooms/:name/recordings/update |
| [**room_sip_call_transfer**](RoomsApi.md#room_sip_call_transfer) | **POST** /rooms/{room_name}/sipCallTransfer | rooms/:name/sipCallTransfer |
| [**room_sip_refer**](RoomsApi.md#room_sip_refer) | **POST** /rooms/{room_name}/sipRefer | rooms/:name/sipRefer |
| [**room_transcription_start**](RoomsApi.md#room_transcription_start) | **POST** /rooms/{room_name}/transcription/start | rooms/:name/transcription/start |
| [**room_transcription_stop**](RoomsApi.md#room_transcription_stop) | **POST** /rooms/{room_name}/transcription/stop | rooms/:name/transcription/stop |
| [**send_app_message**](RoomsApi.md#send_app_message) | **POST** /rooms/{room_name}/send-app-message | rooms/:name/send-app-message |
| [**set_room_config**](RoomsApi.md#set_room_config) | **POST** /rooms/{room_name} | rooms/:name |
| [**set_session_data**](RoomsApi.md#set_session_data) | **POST** /rooms/{room_name}/set-session-data | rooms/:name/set-session-data |
| [**update_permissions**](RoomsApi.md#update_permissions) | **POST** /rooms/{room_name}/update-permissions | rooms/:name/update-permissions |


## create_room

> <CreateRoom200Response> create_room(opts)

/rooms

Create a room

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

api_instance = Daily::RoomsApi.new
opts = {
  create_room_request: Daily::CreateRoomRequest.new # CreateRoomRequest | 
}

begin
  # /rooms
  result = api_instance.create_room(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->create_room: #{e}"
end
```

#### Using the create_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRoom200Response>, Integer, Hash)> create_room_with_http_info(opts)

```ruby
begin
  # /rooms
  data, status_code, headers = api_instance.create_room_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRoom200Response>
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->create_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_room_request** | [**CreateRoomRequest**](CreateRoomRequest.md) |  | [optional] |

### Return type

[**CreateRoom200Response**](CreateRoom200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room

> Object delete_room(room_name)

rooms/:name

Delete a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name
  result = api_instance.delete_room(room_name)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->delete_room: #{e}"
end
```

#### Using the delete_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_room_with_http_info(room_name)

```ruby
begin
  # rooms/:name
  data, status_code, headers = api_instance.delete_room_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->delete_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## eject

> <Eject200Response> eject(room_name, opts)

rooms/:name/eject

Ejects participants from a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  eject_request: Daily::EjectRequest.new # EjectRequest | 
}

begin
  # rooms/:name/eject
  result = api_instance.eject(room_name, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->eject: #{e}"
end
```

#### Using the eject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Eject200Response>, Integer, Hash)> eject_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/eject
  data, status_code, headers = api_instance.eject_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Eject200Response>
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->eject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **eject_request** | [**EjectRequest**](EjectRequest.md) |  | [optional] |

### Return type

[**Eject200Response**](Eject200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_config

> <RoomsRoomNameGetRes> get_room_config(room_name)

rooms/:name

Get info about a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name
  result = api_instance.get_room_config(room_name)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_room_config: #{e}"
end
```

#### Using the get_room_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomsRoomNameGetRes>, Integer, Hash)> get_room_config_with_http_info(room_name)

```ruby
begin
  # rooms/:name
  data, status_code, headers = api_instance.get_room_config_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomsRoomNameGetRes>
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_room_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

[**RoomsRoomNameGetRes**](RoomsRoomNameGetRes.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_presence

> <RoomsRoomNamePresenceGetRes> get_room_presence(room_name, opts)

rooms/:name/presence

Get a presence snapshot for a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | The name of the room
opts = {
  limit: 56, # Integer | Sets the number of participants returned.
  user_id: 'user_id_example', # String | Returns presence for the user with the given userId, if available. The userId is specified via a [meeting token](/reference/rest-api/meeting-tokens/config#user_id).
  user_name: 'user_name_example' # String | Returns presence for the user with the given name, if available.
}

begin
  # rooms/:name/presence
  result = api_instance.get_room_presence(room_name, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_room_presence: #{e}"
end
```

#### Using the get_room_presence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomsRoomNamePresenceGetRes>, Integer, Hash)> get_room_presence_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/presence
  data, status_code, headers = api_instance.get_room_presence_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomsRoomNamePresenceGetRes>
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_room_presence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** | The name of the room |  |
| **limit** | **Integer** | Sets the number of participants returned. | [optional] |
| **user_id** | **String** | Returns presence for the user with the given userId, if available. The userId is specified via a [meeting token](/reference/rest-api/meeting-tokens/config#user_id). | [optional] |
| **user_name** | **String** | Returns presence for the user with the given name, if available. | [optional] |

### Return type

[**RoomsRoomNamePresenceGetRes**](RoomsRoomNamePresenceGetRes.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_session_data

> get_session_data(room_name)

rooms/:name/get-session-data

Gets meeting session data

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name/get-session-data
  api_instance.get_session_data(room_name)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_session_data: #{e}"
end
```

#### Using the get_session_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_session_data_with_http_info(room_name)

```ruby
begin
  # rooms/:name/get-session-data
  data, status_code, headers = api_instance.get_session_data_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->get_session_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rooms

> <ListRooms200Response> list_rooms(opts)

/rooms

List rooms

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

api_instance = Daily::RoomsApi.new
opts = {
  limit: 56, # Integer | Sets the number of rooms listed
  ending_before: 'ending_before_example', # String | Returns room objects created before a provided room  id
  starting_after: 'starting_after_example' # String | Returns room objects created after a provided room id
}

begin
  # /rooms
  result = api_instance.list_rooms(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->list_rooms: #{e}"
end
```

#### Using the list_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRooms200Response>, Integer, Hash)> list_rooms_with_http_info(opts)

```ruby
begin
  # /rooms
  data, status_code, headers = api_instance.list_rooms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRooms200Response>
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->list_rooms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Sets the number of rooms listed | [optional] |
| **ending_before** | **String** | Returns room objects created before a provided room  id | [optional] |
| **starting_after** | **String** | Returns room objects created after a provided room id | [optional] |

### Return type

[**ListRooms200Response**](ListRooms200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## room_dial_out_send_dtmf

> room_dial_out_send_dtmf(room_name, opts)

rooms/:name/dialOut/sendDTMF

send DTMF digits on the dialout

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  room_dial_out_send_dtmf_request: Daily::RoomDialOutSendDTMFRequest.new # RoomDialOutSendDTMFRequest | 
}

begin
  # rooms/:name/dialOut/sendDTMF
  api_instance.room_dial_out_send_dtmf(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_send_dtmf: #{e}"
end
```

#### Using the room_dial_out_send_dtmf_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_dial_out_send_dtmf_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/dialOut/sendDTMF
  data, status_code, headers = api_instance.room_dial_out_send_dtmf_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_send_dtmf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **room_dial_out_send_dtmf_request** | [**RoomDialOutSendDTMFRequest**](RoomDialOutSendDTMFRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_dial_out_start

> room_dial_out_start(room_name, opts)

rooms/:name/dialOut/start

Start a dial-out in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  dialout_properties: Daily::DialoutProperties.new # DialoutProperties | 
}

begin
  # rooms/:name/dialOut/start
  api_instance.room_dial_out_start(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_start: #{e}"
end
```

#### Using the room_dial_out_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_dial_out_start_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/dialOut/start
  data, status_code, headers = api_instance.room_dial_out_start_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **dialout_properties** | [**DialoutProperties**](DialoutProperties.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_dial_out_stop

> room_dial_out_stop(room_name, opts)

rooms/:name/dialOut/stop

Stop a dial out in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  room_dial_out_stop_request: Daily::RoomDialOutStopRequest.new # RoomDialOutStopRequest | 
}

begin
  # rooms/:name/dialOut/stop
  api_instance.room_dial_out_stop(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_stop: #{e}"
end
```

#### Using the room_dial_out_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_dial_out_stop_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/dialOut/stop
  data, status_code, headers = api_instance.room_dial_out_stop_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_dial_out_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **room_dial_out_stop_request** | [**RoomDialOutStopRequest**](RoomDialOutStopRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_livestreaming_start

> room_livestreaming_start(room_name, opts)

rooms/:name/live-streaming/start

Start a live stream in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  daily_live_streaming_options: Daily::DailyLiveStreamingOptions.new # DailyLiveStreamingOptions | 
}

begin
  # rooms/:name/live-streaming/start
  api_instance.room_livestreaming_start(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_start: #{e}"
end
```

#### Using the room_livestreaming_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_livestreaming_start_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/live-streaming/start
  data, status_code, headers = api_instance.room_livestreaming_start_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **daily_live_streaming_options** | [**DailyLiveStreamingOptions**](DailyLiveStreamingOptions.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_livestreaming_stop

> room_livestreaming_stop(room_name)

rooms/:name/live-streaming/stop

Stop a live stream in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name/live-streaming/stop
  api_instance.room_livestreaming_stop(room_name)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_stop: #{e}"
end
```

#### Using the room_livestreaming_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_livestreaming_stop_with_http_info(room_name)

```ruby
begin
  # rooms/:name/live-streaming/stop
  data, status_code, headers = api_instance.room_livestreaming_stop_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## room_livestreaming_update

> room_livestreaming_update(room_name, opts)

rooms/:name/live-streaming/update

Update a live stream in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  daily_live_streaming_options: Daily::DailyLiveStreamingOptions.new # DailyLiveStreamingOptions | 
}

begin
  # rooms/:name/live-streaming/update
  api_instance.room_livestreaming_update(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_update: #{e}"
end
```

#### Using the room_livestreaming_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_livestreaming_update_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/live-streaming/update
  data, status_code, headers = api_instance.room_livestreaming_update_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_livestreaming_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **daily_live_streaming_options** | [**DailyLiveStreamingOptions**](DailyLiveStreamingOptions.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_recordings_start

> room_recordings_start(room_name, opts)

rooms/:name/recordings/start

Start a recording in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  recording_streaming_options: Daily::RecordingStreamingOptions.new # RecordingStreamingOptions | 
}

begin
  # rooms/:name/recordings/start
  api_instance.room_recordings_start(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_start: #{e}"
end
```

#### Using the room_recordings_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_recordings_start_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/recordings/start
  data, status_code, headers = api_instance.room_recordings_start_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **recording_streaming_options** | [**RecordingStreamingOptions**](RecordingStreamingOptions.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_recordings_stop

> room_recordings_stop(room_name)

rooms/:name/recordings/stop

Stop a recording in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name/recordings/stop
  api_instance.room_recordings_stop(room_name)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_stop: #{e}"
end
```

#### Using the room_recordings_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_recordings_stop_with_http_info(room_name)

```ruby
begin
  # rooms/:name/recordings/stop
  data, status_code, headers = api_instance.room_recordings_stop_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## room_recordings_update

> room_recordings_update(room_name, opts)

rooms/:name/recordings/update

Update a recording in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  daily_streaming_options: Daily::DailyStreamingOptions.new # DailyStreamingOptions | 
}

begin
  # rooms/:name/recordings/update
  api_instance.room_recordings_update(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_update: #{e}"
end
```

#### Using the room_recordings_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_recordings_update_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/recordings/update
  data, status_code, headers = api_instance.room_recordings_update_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_recordings_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **daily_streaming_options** | [**DailyStreamingOptions**](DailyStreamingOptions.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_sip_call_transfer

> room_sip_call_transfer(room_name, opts)

rooms/:name/sipCallTransfer

transfer sip/pstn call

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  room_sip_call_transfer_request: Daily::RoomSipCallTransferRequest.new # RoomSipCallTransferRequest | 
}

begin
  # rooms/:name/sipCallTransfer
  api_instance.room_sip_call_transfer(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_sip_call_transfer: #{e}"
end
```

#### Using the room_sip_call_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_sip_call_transfer_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/sipCallTransfer
  data, status_code, headers = api_instance.room_sip_call_transfer_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_sip_call_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **room_sip_call_transfer_request** | [**RoomSipCallTransferRequest**](RoomSipCallTransferRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_sip_refer

> Object room_sip_refer(room_name, opts)

rooms/:name/sipRefer

refer a sip call to other sip endpoint

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  room_sip_call_transfer_request: Daily::RoomSipCallTransferRequest.new # RoomSipCallTransferRequest | 
}

begin
  # rooms/:name/sipRefer
  result = api_instance.room_sip_refer(room_name, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_sip_refer: #{e}"
end
```

#### Using the room_sip_refer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> room_sip_refer_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/sipRefer
  data, status_code, headers = api_instance.room_sip_refer_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_sip_refer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **room_sip_call_transfer_request** | [**RoomSipCallTransferRequest**](RoomSipCallTransferRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_transcription_start

> room_transcription_start(room_name, opts)

rooms/:name/transcription/start

Start a transcription in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  transcription_properties: Daily::TranscriptionProperties.new # TranscriptionProperties | 
}

begin
  # rooms/:name/transcription/start
  api_instance.room_transcription_start(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_transcription_start: #{e}"
end
```

#### Using the room_transcription_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_transcription_start_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/transcription/start
  data, status_code, headers = api_instance.room_transcription_start_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_transcription_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **transcription_properties** | [**TranscriptionProperties**](TranscriptionProperties.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## room_transcription_stop

> room_transcription_stop(room_name)

rooms/:name/transcription/stop

Stop a transcription in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 

begin
  # rooms/:name/transcription/stop
  api_instance.room_transcription_stop(room_name)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_transcription_stop: #{e}"
end
```

#### Using the room_transcription_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> room_transcription_stop_with_http_info(room_name)

```ruby
begin
  # rooms/:name/transcription/stop
  data, status_code, headers = api_instance.room_transcription_stop_with_http_info(room_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->room_transcription_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_app_message

> send_app_message(room_name, opts)

rooms/:name/send-app-message

Send a message to participants in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  send_app_message_request: Daily::SendAppMessageRequest.new # SendAppMessageRequest | 
}

begin
  # rooms/:name/send-app-message
  api_instance.send_app_message(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->send_app_message: #{e}"
end
```

#### Using the send_app_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_app_message_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/send-app-message
  data, status_code, headers = api_instance.send_app_message_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->send_app_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **send_app_message_request** | [**SendAppMessageRequest**](SendAppMessageRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_room_config

> set_room_config(room_name, opts)

rooms/:name

Set a room's privacy and config properties

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  set_room_config_request: Daily::SetRoomConfigRequest.new # SetRoomConfigRequest | 
}

begin
  # rooms/:name
  api_instance.set_room_config(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->set_room_config: #{e}"
end
```

#### Using the set_room_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_room_config_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name
  data, status_code, headers = api_instance.set_room_config_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->set_room_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **set_room_config_request** | [**SetRoomConfigRequest**](SetRoomConfigRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_session_data

> set_session_data(room_name, opts)

rooms/:name/set-session-data

Sets meeting session data

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  set_session_data_request: Daily::SetSessionDataRequest.new # SetSessionDataRequest | 
}

begin
  # rooms/:name/set-session-data
  api_instance.set_session_data(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->set_session_data: #{e}"
end
```

#### Using the set_session_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_session_data_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/set-session-data
  data, status_code, headers = api_instance.set_session_data_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->set_session_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **set_session_data_request** | [**SetSessionDataRequest**](SetSessionDataRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_permissions

> update_permissions(room_name, opts)

rooms/:name/update-permissions

Modifies permissions for one or more participants in a room

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

api_instance = Daily::RoomsApi.new
room_name = 'room_name_example' # String | 
opts = {
  update_permissions_request: Daily::UpdatePermissionsRequest.new # UpdatePermissionsRequest | 
}

begin
  # rooms/:name/update-permissions
  api_instance.update_permissions(room_name, opts)
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->update_permissions: #{e}"
end
```

#### Using the update_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_permissions_with_http_info(room_name, opts)

```ruby
begin
  # rooms/:name/update-permissions
  data, status_code, headers = api_instance.update_permissions_with_http_info(room_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling RoomsApi->update_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **update_permissions_request** | [**UpdatePermissionsRequest**](UpdatePermissionsRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

