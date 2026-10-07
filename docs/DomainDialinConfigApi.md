# Daily::DomainDialinConfigApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_domain_dial_config_info**](DomainDialinConfigApi.md#create_domain_dial_config_info) | **POST** /domain-dialin-config | create new config |
| [**delete_domain_dialin_config**](DomainDialinConfigApi.md#delete_domain_dialin_config) | **DELETE** /domain-dialin-config/{id} | domain-dialin-config/:id |
| [**get_domain_dialin_config_info**](DomainDialinConfigApi.md#get_domain_dialin_config_info) | **GET** /domain-dialin-config/{id} | domain-dialin-config/:id |
| [**list_domain_dialin_configs**](DomainDialinConfigApi.md#list_domain_dialin_configs) | **GET** /domain-dialin-config | /domain-dialin-config |
| [**update_domain_dial_config_info**](DomainDialinConfigApi.md#update_domain_dial_config_info) | **PUT** /domain-dialin-config/{id} | domain-dialin-config/:id |


## create_domain_dial_config_info

> <DomainDialinConfigInfoRes> create_domain_dial_config_info(opts)

create new config

create a new pinless_dialin or pin_dialin config

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DomainDialinConfigApi.new
opts = {
  domain_dialin_config_create_req: Daily::DomainDialinConfigCreateReq.new({type: 'pin_dialin', phone_number: '+12555599999'}) # DomainDialinConfigCreateReq | 
}

begin
  # create new config
  result = api_instance.create_domain_dial_config_info(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->create_domain_dial_config_info: #{e}"
end
```

#### Using the create_domain_dial_config_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDialinConfigInfoRes>, Integer, Hash)> create_domain_dial_config_info_with_http_info(opts)

```ruby
begin
  # create new config
  data, status_code, headers = api_instance.create_domain_dial_config_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDialinConfigInfoRes>
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->create_domain_dial_config_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_dialin_config_create_req** | [**DomainDialinConfigCreateReq**](DomainDialinConfigCreateReq.md) |  | [optional] |

### Return type

[**DomainDialinConfigInfoRes**](DomainDialinConfigInfoRes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_domain_dialin_config

> <DeleteDomainDialinConfig200Response> delete_domain_dialin_config(id)

domain-dialin-config/:id

Delete a given pinless_dialin or pin_dialin config

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DomainDialinConfigApi.new
id = 'id_example' # String | 

begin
  # domain-dialin-config/:id
  result = api_instance.delete_domain_dialin_config(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->delete_domain_dialin_config: #{e}"
end
```

#### Using the delete_domain_dialin_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDomainDialinConfig200Response>, Integer, Hash)> delete_domain_dialin_config_with_http_info(id)

```ruby
begin
  # domain-dialin-config/:id
  data, status_code, headers = api_instance.delete_domain_dialin_config_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDomainDialinConfig200Response>
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->delete_domain_dialin_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteDomainDialinConfig200Response**](DeleteDomainDialinConfig200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_dialin_config_info

> <DomainDialinConfigInfoRes> get_domain_dialin_config_info(id)

domain-dialin-config/:id

Get info about an existing pinless_dialin or pin_dialin config

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DomainDialinConfigApi.new
id = 'id_example' # String | 

begin
  # domain-dialin-config/:id
  result = api_instance.get_domain_dialin_config_info(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->get_domain_dialin_config_info: #{e}"
end
```

#### Using the get_domain_dialin_config_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDialinConfigInfoRes>, Integer, Hash)> get_domain_dialin_config_info_with_http_info(id)

```ruby
begin
  # domain-dialin-config/:id
  data, status_code, headers = api_instance.get_domain_dialin_config_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDialinConfigInfoRes>
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->get_domain_dialin_config_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DomainDialinConfigInfoRes**](DomainDialinConfigInfoRes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_domain_dialin_configs

> <ListDomainDialinConfigs200Response> list_domain_dialin_configs(opts)

/domain-dialin-config

List all the pinless_dialin and pin_dialin configs for the domain, with pagination

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DomainDialinConfigApi.new
opts = {
  limit: 56, # Integer | 
  ending_before: 'ending_before_example', # String | 
  starting_after: 'starting_after_example', # String | 
  phone_number: 'phone_number_example', # String | 
  phone_numbers: 'phone_numbers_example', # String | a comma separated list of phone numbers to filter by. The filter will match any phone number that contains the provided numbers as a substring (partial match).
  sip_username: 'sip_username_example', # String | The sip username associated with this dial-in config (only the username part of the sip uri)
  name_prefix: 'name_prefix_example', # String | 
  type: 'type_example' # String | The type of dial-in config. It can be pinless_dialin or pin_dialin.
}

begin
  # /domain-dialin-config
  result = api_instance.list_domain_dialin_configs(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->list_domain_dialin_configs: #{e}"
end
```

#### Using the list_domain_dialin_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDomainDialinConfigs200Response>, Integer, Hash)> list_domain_dialin_configs_with_http_info(opts)

```ruby
begin
  # /domain-dialin-config
  data, status_code, headers = api_instance.list_domain_dialin_configs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDomainDialinConfigs200Response>
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->list_domain_dialin_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **starting_after** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **phone_numbers** | **String** | a comma separated list of phone numbers to filter by. The filter will match any phone number that contains the provided numbers as a substring (partial match). | [optional] |
| **sip_username** | **String** | The sip username associated with this dial-in config (only the username part of the sip uri) | [optional] |
| **name_prefix** | **String** |  | [optional] |
| **type** | **String** | The type of dial-in config. It can be pinless_dialin or pin_dialin. | [optional] |

### Return type

[**ListDomainDialinConfigs200Response**](ListDomainDialinConfigs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_domain_dial_config_info

> <DomainDialinConfigInfoRes> update_domain_dial_config_info(id, opts)

domain-dialin-config/:id

update an existing pinless_dialin or pin_dialin config

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DomainDialinConfigApi.new
id = 'id_example' # String | 
opts = {
  domain_dialin_config_update_req: Daily::DomainDialinConfigUpdateReq.new # DomainDialinConfigUpdateReq | 
}

begin
  # domain-dialin-config/:id
  result = api_instance.update_domain_dial_config_info(id, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->update_domain_dial_config_info: #{e}"
end
```

#### Using the update_domain_dial_config_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDialinConfigInfoRes>, Integer, Hash)> update_domain_dial_config_info_with_http_info(id, opts)

```ruby
begin
  # domain-dialin-config/:id
  data, status_code, headers = api_instance.update_domain_dial_config_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDialinConfigInfoRes>
rescue Daily::ApiError => e
  puts "Error when calling DomainDialinConfigApi->update_domain_dial_config_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **domain_dialin_config_update_req** | [**DomainDialinConfigUpdateReq**](DomainDialinConfigUpdateReq.md) |  | [optional] |

### Return type

[**DomainDialinConfigInfoRes**](DomainDialinConfigInfoRes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

