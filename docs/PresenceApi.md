# Daily::PresenceApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_presence**](PresenceApi.md#get_presence) | **GET** /presence | /presence |


## get_presence

> <GetPresence200Response> get_presence

/presence

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

api_instance = Daily::PresenceApi.new

begin
  # /presence
  result = api_instance.get_presence
  p result
rescue Daily::ApiError => e
  puts "Error when calling PresenceApi->get_presence: #{e}"
end
```

#### Using the get_presence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPresence200Response>, Integer, Hash)> get_presence_with_http_info

```ruby
begin
  # /presence
  data, status_code, headers = api_instance.get_presence_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPresence200Response>
rescue Daily::ApiError => e
  puts "Error when calling PresenceApi->get_presence_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPresence200Response**](GetPresence200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

