# Daily::DialinApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pinless_call_update**](DialinApi.md#pinless_call_update) | **POST** /dialin/pinlessCallUpdate | /dialin/pinlessCallUpdate |


## pinless_call_update

> pinless_call_update(opts)

/dialin/pinlessCallUpdate

Direct a SIP or PSTN call on hold to a specified SIP URI associated to a Daily Room.

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

api_instance = Daily::DialinApi.new
opts = {
  pinless_call_update_request: Daily::PinlessCallUpdateRequest.new # PinlessCallUpdateRequest | 
}

begin
  # /dialin/pinlessCallUpdate
  api_instance.pinless_call_update(opts)
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->pinless_call_update: #{e}"
end
```

#### Using the pinless_call_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> pinless_call_update_with_http_info(opts)

```ruby
begin
  # /dialin/pinlessCallUpdate
  data, status_code, headers = api_instance.pinless_call_update_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->pinless_call_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pinless_call_update_request** | [**PinlessCallUpdateRequest**](PinlessCallUpdateRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

