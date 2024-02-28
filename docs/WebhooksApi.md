# Daily::WebhooksApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | /webhooks |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | webhooks/:id |
| [**get_webhook_config**](WebhooksApi.md#get_webhook_config) | **GET** /webhooks/{id} | webhooks/:id |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | /webhooks |
| [**update_webhook_config**](WebhooksApi.md#update_webhook_config) | **POST** /webhooks/{id} | webhooks/:id |


## create_webhook

> <Webhook> create_webhook(opts)

/webhooks

Create a webhook

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

api_instance = Daily::WebhooksApi.new
opts = {
  post_webhook: Daily::PostWebhook.new # PostWebhook | 
}

begin
  # /webhooks
  result = api_instance.create_webhook(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> create_webhook_with_http_info(opts)

```ruby
begin
  # /webhooks
  data, status_code, headers = api_instance.create_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_webhook** | [**PostWebhook**](PostWebhook.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> Object delete_webhook(id)

webhooks/:id

Delete a webhook

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

api_instance = Daily::WebhooksApi.new
id = 'id_example' # String | 

begin
  # webhooks/:id
  result = api_instance.delete_webhook(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_webhook_with_http_info(id)

```ruby
begin
  # webhooks/:id
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_config

> <Array<Webhook>> get_webhook_config(id)

webhooks/:id

Get info about a webhook

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

api_instance = Daily::WebhooksApi.new
id = 'id_example' # String | 

begin
  # webhooks/:id
  result = api_instance.get_webhook_config(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_config: #{e}"
end
```

#### Using the get_webhook_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Webhook>>, Integer, Hash)> get_webhook_config_with_http_info(id)

```ruby
begin
  # webhooks/:id
  data, status_code, headers = api_instance.get_webhook_config_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Webhook>>
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <Array<Webhook>> get_webhooks

/webhooks

Get Webhooks

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

api_instance = Daily::WebhooksApi.new

begin
  # /webhooks
  result = api_instance.get_webhooks
  p result
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Webhook>>, Integer, Hash)> get_webhooks_with_http_info

```ruby
begin
  # /webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Webhook>>
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_config

> <Webhook> update_webhook_config(id, opts)

webhooks/:id

Update webhook config

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

api_instance = Daily::WebhooksApi.new
id = 'id_example' # String | 
opts = {
  update_webhook: Daily::UpdateWebhook.new # UpdateWebhook | 
}

begin
  # webhooks/:id
  result = api_instance.update_webhook_config(id, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_config: #{e}"
end
```

#### Using the update_webhook_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_config_with_http_info(id, opts)

```ruby
begin
  # webhooks/:id
  data, status_code, headers = api_instance.update_webhook_config_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue Daily::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_webhook** | [**UpdateWebhook**](UpdateWebhook.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

