# Daily::DomainApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_domain_config**](DomainApi.md#get_domain_config) | **GET** / | Get domain configuration |
| [**set_domain_config**](DomainApi.md#set_domain_config) | **POST** / | Set domain configuration |


## get_domain_config

> <GetDomainConfig200Response> get_domain_config

Get domain configuration

Get top-level configuration of your domain

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

api_instance = Daily::DomainApi.new

begin
  # Get domain configuration
  result = api_instance.get_domain_config
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainApi->get_domain_config: #{e}"
end
```

#### Using the get_domain_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainConfig200Response>, Integer, Hash)> get_domain_config_with_http_info

```ruby
begin
  # Get domain configuration
  data, status_code, headers = api_instance.get_domain_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainConfig200Response>
rescue Daily::ApiError => e
  puts "Error when calling DomainApi->get_domain_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDomainConfig200Response**](GetDomainConfig200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_domain_config

> set_domain_config(opts)

Set domain configuration

Set top-level configuration options for your domain

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

api_instance = Daily::DomainApi.new
opts = {
  domain: Daily::Domain.new # Domain | 
}

begin
  # Set domain configuration
  api_instance.set_domain_config(opts)
rescue Daily::ApiError => e
  puts "Error when calling DomainApi->set_domain_config: #{e}"
end
```

#### Using the set_domain_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_domain_config_with_http_info(opts)

```ruby
begin
  # Set domain configuration
  data, status_code, headers = api_instance.set_domain_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling DomainApi->set_domain_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | [**Domain**](Domain.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

