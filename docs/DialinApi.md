# Daily::DialinApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sip_client**](DialinApi.md#create_sip_client) | **POST** /sip-clients | /sip-clients |
| [**create_sip_trunk**](DialinApi.md#create_sip_trunk) | **POST** /sip-trunk | /sip-trunk |
| [**delete_sip_client**](DialinApi.md#delete_sip_client) | **DELETE** /sip-clients/{username} | /sip-clients/{username} |
| [**delete_sip_trunk**](DialinApi.md#delete_sip_trunk) | **DELETE** /sip-trunk/{id} | /sip-trunk/{id} |
| [**get_sip_client**](DialinApi.md#get_sip_client) | **GET** /sip-clients/{username} | /sip-clients/{username} |
| [**get_sip_trunk**](DialinApi.md#get_sip_trunk) | **GET** /sip-trunk/{id} | /sip-trunk/{id} |
| [**list_sip_clients**](DialinApi.md#list_sip_clients) | **GET** /sip-clients | /sip-clients |
| [**list_sip_trunks**](DialinApi.md#list_sip_trunks) | **GET** /sip-trunk | /sip-trunk |
| [**pinless_call_update**](DialinApi.md#pinless_call_update) | **POST** /dialin/pinlessCallUpdate | /dialin/pinlessCallUpdate |
| [**rotate_sip_client**](DialinApi.md#rotate_sip_client) | **POST** /sip-clients/{username}/rotate | /sip-clients/{username}/rotate |
| [**update_sip_trunk**](DialinApi.md#update_sip_trunk) | **PUT** /sip-trunk/{id} | /sip-trunk/{id} |


## create_sip_client

> <CreateSipClient200Response> create_sip_client(create_sip_client_request)

/sip-clients

Register a plain SIP client for your domain. Returns the client's SIP URI and a generated `password`, shown ONCE and never returned again. Provide a `username` (a room-style name, optionally suffixed with `.<number>`); supply your own `password` or let one be generated. An optional `expires_in_seconds` sets a TTL after which the client is removed automatically - omit it for a long-lived client. Subject to a per-domain client limit.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
create_sip_client_request = Daily::CreateSipClientRequest.new({username: 'myroom.0'}) # CreateSipClientRequest | 

begin
  # /sip-clients
  result = api_instance.create_sip_client(create_sip_client_request)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->create_sip_client: #{e}"
end
```

#### Using the create_sip_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSipClient200Response>, Integer, Hash)> create_sip_client_with_http_info(create_sip_client_request)

```ruby
begin
  # /sip-clients
  data, status_code, headers = api_instance.create_sip_client_with_http_info(create_sip_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSipClient200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->create_sip_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sip_client_request** | [**CreateSipClientRequest**](CreateSipClientRequest.md) |  |  |

### Return type

[**CreateSipClient200Response**](CreateSipClient200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sip_trunk

> <CreateSipTrunk200Response> create_sip_trunk(create_sip_trunk_request)

/sip-trunk

Create a SIP trunk for your domain. Returns the `sip_uri` to point your carrier at, plus the generated `hmac`. `notification.webhook_url` is required and must be LIVE: create sends a signed one-shot `sip_trunk.test` POST that must return 2xx, or the create fails with 400. A trunk must be gated by `allowed_ips`/`credential` or explicitly `is_open: true`.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
create_sip_trunk_request = Daily::CreateSipTrunkRequest.new({trunk_name: 'support', room_template: { key: 3.56}, notification: Daily::CreateSipTrunkRequestNotification.new({webhook_url: 'webhook_url_example'})}) # CreateSipTrunkRequest | 

begin
  # /sip-trunk
  result = api_instance.create_sip_trunk(create_sip_trunk_request)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->create_sip_trunk: #{e}"
end
```

#### Using the create_sip_trunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSipTrunk200Response>, Integer, Hash)> create_sip_trunk_with_http_info(create_sip_trunk_request)

```ruby
begin
  # /sip-trunk
  data, status_code, headers = api_instance.create_sip_trunk_with_http_info(create_sip_trunk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSipTrunk200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->create_sip_trunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sip_trunk_request** | [**CreateSipTrunkRequest**](CreateSipTrunkRequest.md) |  |  |

### Return type

[**CreateSipTrunk200Response**](CreateSipTrunk200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sip_client

> <DeleteSipClient200Response> delete_sip_client(username)

/sip-clients/{username}

Delete a SIP client. After deletion it can no longer register or place calls.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
username = 'username_example' # String | 

begin
  # /sip-clients/{username}
  result = api_instance.delete_sip_client(username)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->delete_sip_client: #{e}"
end
```

#### Using the delete_sip_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSipClient200Response>, Integer, Hash)> delete_sip_client_with_http_info(username)

```ruby
begin
  # /sip-clients/{username}
  data, status_code, headers = api_instance.delete_sip_client_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSipClient200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->delete_sip_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |

### Return type

[**DeleteSipClient200Response**](DeleteSipClient200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_sip_trunk

> delete_sip_trunk(id)

/sip-trunk/{id}

Delete a SIP trunk (and its Kamailio credential, if any).

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
id = 'id_example' # String | 

begin
  # /sip-trunk/{id}
  api_instance.delete_sip_trunk(id)
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->delete_sip_trunk: #{e}"
end
```

#### Using the delete_sip_trunk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sip_trunk_with_http_info(id)

```ruby
begin
  # /sip-trunk/{id}
  data, status_code, headers = api_instance.delete_sip_trunk_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->delete_sip_trunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sip_client

> <ListSipClients200ResponseSipClientsInner> get_sip_client(username)

/sip-clients/{username}

Fetch one SIP client by username. The password is never returned.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
username = 'username_example' # String | 

begin
  # /sip-clients/{username}
  result = api_instance.get_sip_client(username)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->get_sip_client: #{e}"
end
```

#### Using the get_sip_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSipClients200ResponseSipClientsInner>, Integer, Hash)> get_sip_client_with_http_info(username)

```ruby
begin
  # /sip-clients/{username}
  data, status_code, headers = api_instance.get_sip_client_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSipClients200ResponseSipClientsInner>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->get_sip_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |

### Return type

[**ListSipClients200ResponseSipClientsInner**](ListSipClients200ResponseSipClientsInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sip_trunk

> <ListSipTrunks200ResponseDataInner> get_sip_trunk(id)

/sip-trunk/{id}

Fetch one SIP trunk by id.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
id = 'id_example' # String | 

begin
  # /sip-trunk/{id}
  result = api_instance.get_sip_trunk(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->get_sip_trunk: #{e}"
end
```

#### Using the get_sip_trunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSipTrunks200ResponseDataInner>, Integer, Hash)> get_sip_trunk_with_http_info(id)

```ruby
begin
  # /sip-trunk/{id}
  data, status_code, headers = api_instance.get_sip_trunk_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSipTrunks200ResponseDataInner>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->get_sip_trunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ListSipTrunks200ResponseDataInner**](ListSipTrunks200ResponseDataInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sip_clients

> <ListSipClients200Response> list_sip_clients(opts)

/sip-clients

List the SIP clients registered for your domain (paginated). Passwords are never returned.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
opts = {
  limit: 56, # Integer | Max results (1-100, default 50).
  offset: 56 # Integer | Number of results to skip (default 0).
}

begin
  # /sip-clients
  result = api_instance.list_sip_clients(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->list_sip_clients: #{e}"
end
```

#### Using the list_sip_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSipClients200Response>, Integer, Hash)> list_sip_clients_with_http_info(opts)

```ruby
begin
  # /sip-clients
  data, status_code, headers = api_instance.list_sip_clients_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSipClients200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->list_sip_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max results (1-100, default 50). | [optional] |
| **offset** | **Integer** | Number of results to skip (default 0). | [optional] |

### Return type

[**ListSipClients200Response**](ListSipClients200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sip_trunks

> <ListSipTrunks200Response> list_sip_trunks(opts)

/sip-trunk

List the SIP trunks for your domain (paginated).

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
opts = {
  limit: 56, # Integer | Max results (1-100, default 20).
  starting_after: 'starting_after_example', # String | 
  ending_before: 'ending_before_example', # String | 
  trunk_name: 'trunk_name_example', # String | Substring match.
  description: 'description_example', # String | Substring match.
  enabled: true # Boolean | 
}

begin
  # /sip-trunk
  result = api_instance.list_sip_trunks(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->list_sip_trunks: #{e}"
end
```

#### Using the list_sip_trunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSipTrunks200Response>, Integer, Hash)> list_sip_trunks_with_http_info(opts)

```ruby
begin
  # /sip-trunk
  data, status_code, headers = api_instance.list_sip_trunks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSipTrunks200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->list_sip_trunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max results (1-100, default 20). | [optional] |
| **starting_after** | **String** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **trunk_name** | **String** | Substring match. | [optional] |
| **description** | **String** | Substring match. | [optional] |
| **enabled** | **Boolean** |  | [optional] |

### Return type

[**ListSipTrunks200Response**](ListSipTrunks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rotate_sip_client

> <RotateSipClient200Response> rotate_sip_client(username, opts)

/sip-clients/{username}/rotate

Rotate a SIP client's password. Supply a new `password` or let one be generated; the new password is returned ONCE. The client's SIP URI and expiry are unchanged.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
username = 'username_example' # String | 
opts = {
  rotate_sip_client_request: Daily::RotateSipClientRequest.new # RotateSipClientRequest | 
}

begin
  # /sip-clients/{username}/rotate
  result = api_instance.rotate_sip_client(username, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->rotate_sip_client: #{e}"
end
```

#### Using the rotate_sip_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RotateSipClient200Response>, Integer, Hash)> rotate_sip_client_with_http_info(username, opts)

```ruby
begin
  # /sip-clients/{username}/rotate
  data, status_code, headers = api_instance.rotate_sip_client_with_http_info(username, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RotateSipClient200Response>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->rotate_sip_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **rotate_sip_client_request** | [**RotateSipClientRequest**](RotateSipClientRequest.md) |  | [optional] |

### Return type

[**RotateSipClient200Response**](RotateSipClient200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sip_trunk

> <ListSipTrunks200ResponseDataInner> update_sip_trunk(id, update_sip_trunk_request)

/sip-trunk/{id}

Update a SIP trunk (partial overlay). `trunk_name` is immutable. In `notification`, `hmac: null` ROTATES the secret (Daily regenerates a fresh one); a value sets it; omit to keep the current one. Any update touching `notification` re-sends the signed `sip_trunk.test` probe (with the final hmac) - the endpoint must return 2xx. `trunk_config.credential: null` clears the credential. Admission must remain valid (gated XOR is_open).

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::DialinApi.new
id = 'id_example' # String | 
update_sip_trunk_request = Daily::UpdateSipTrunkRequest.new # UpdateSipTrunkRequest | 

begin
  # /sip-trunk/{id}
  result = api_instance.update_sip_trunk(id, update_sip_trunk_request)
  p result
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->update_sip_trunk: #{e}"
end
```

#### Using the update_sip_trunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSipTrunks200ResponseDataInner>, Integer, Hash)> update_sip_trunk_with_http_info(id, update_sip_trunk_request)

```ruby
begin
  # /sip-trunk/{id}
  data, status_code, headers = api_instance.update_sip_trunk_with_http_info(id, update_sip_trunk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSipTrunks200ResponseDataInner>
rescue Daily::ApiError => e
  puts "Error when calling DialinApi->update_sip_trunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_sip_trunk_request** | [**UpdateSipTrunkRequest**](UpdateSipTrunkRequest.md) |  |  |

### Return type

[**ListSipTrunks200ResponseDataInner**](ListSipTrunks200ResponseDataInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

