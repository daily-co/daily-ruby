# Daily::PresenceApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_presence**](PresenceApi.md#get_presence) | **GET** /presence | /presence |


## get_presence

> Hash&lt;String, Array&lt;GetPresence200ResponseValueInner&gt;&gt; get_presence

/presence

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
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

> <Array(Hash&lt;String, Array&lt;GetPresence200ResponseValueInner&gt;&gt;, Integer, Hash)> get_presence_with_http_info

```ruby
begin
  # /presence
  data, status_code, headers = api_instance.get_presence_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;GetPresence200ResponseValueInner&gt;&gt;
rescue Daily::ApiError => e
  puts "Error when calling PresenceApi->get_presence_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Array&lt;GetPresence200ResponseValueInner&gt;&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

