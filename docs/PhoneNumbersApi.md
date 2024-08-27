# Daily::PhoneNumbersApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**buy_phone_number**](PhoneNumbersApi.md#buy_phone_number) | **POST** /buy-phone-number | /buy-phone-number |
| [**list_available_numbers**](PhoneNumbersApi.md#list_available_numbers) | **GET** /list-available-numbers | /list-available-numbers |
| [**purchased_phone_nunbers**](PhoneNumbersApi.md#purchased_phone_nunbers) | **GET** /purchased-phone-numbers | /purchased-phone-numbers |
| [**release_phone_number**](PhoneNumbersApi.md#release_phone_number) | **DELETE** /release-phone-number/{id} | release-phone-number/:id |


## buy_phone_number

> Object buy_phone_number(opts)

/buy-phone-number

This will buy a phone number. In the POST request you can either provide the phone number you want to buy, or leave it empty. If the specified `number` is still available, it will be bought or the API will return a failure. Alternatively, if you skipped the `number` field, a random phone number from California (CA) will be bought.

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

api_instance = Daily::PhoneNumbersApi.new
opts = {
  buy_phone_number_request: Daily::BuyPhoneNumberRequest.new # BuyPhoneNumberRequest | 
}

begin
  # /buy-phone-number
  result = api_instance.buy_phone_number(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->buy_phone_number: #{e}"
end
```

#### Using the buy_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> buy_phone_number_with_http_info(opts)

```ruby
begin
  # /buy-phone-number
  data, status_code, headers = api_instance.buy_phone_number_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->buy_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buy_phone_number_request** | [**BuyPhoneNumberRequest**](BuyPhoneNumberRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_available_numbers

> list_available_numbers(opts)

/list-available-numbers

Search for available phone numbers to purchase

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

api_instance = Daily::PhoneNumbersApi.new
opts = {
  areacode: 'areacode_example', # String | An areacode to search within.
  region: 'region_example', # String | A region or state to search within. Must be an ISO 3166-2 alpha-2 code, i.e. CA for California. Cannot be used in combination with areacode.
  city: 'city_example', # String | A specific City to search within. Example, New York. The string must be url encoded because it is a url parameter. Must be used in combination with region. Cannot be used in combination with areacode, starts_with, contains, or ends_with.
  contains: 'contains_example', # String | A string of 3 to 7 digits that should appear somewhere in the number.
  starts_with: 'starts_with_example', # String | A string of 3 to 7 digits that should be used as the start of a number. Cannot be used in combination with contains or ends_with.
  ends_with: 'ends_with_example' # String | A string of 3 to 7 digits that should be used as the end of a number. Cannot be used in combination with starts_with or contains.
}

begin
  # /list-available-numbers
  api_instance.list_available_numbers(opts)
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_available_numbers: #{e}"
end
```

#### Using the list_available_numbers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_available_numbers_with_http_info(opts)

```ruby
begin
  # /list-available-numbers
  data, status_code, headers = api_instance.list_available_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_available_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **areacode** | **String** | An areacode to search within. | [optional] |
| **region** | **String** | A region or state to search within. Must be an ISO 3166-2 alpha-2 code, i.e. CA for California. Cannot be used in combination with areacode. | [optional] |
| **city** | **String** | A specific City to search within. Example, New York. The string must be url encoded because it is a url parameter. Must be used in combination with region. Cannot be used in combination with areacode, starts_with, contains, or ends_with. | [optional] |
| **contains** | **String** | A string of 3 to 7 digits that should appear somewhere in the number. | [optional] |
| **starts_with** | **String** | A string of 3 to 7 digits that should be used as the start of a number. Cannot be used in combination with contains or ends_with. | [optional] |
| **ends_with** | **String** | A string of 3 to 7 digits that should be used as the end of a number. Cannot be used in combination with starts_with or contains. | [optional] |

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchased_phone_nunbers

> purchased_phone_nunbers

/purchased-phone-numbers

List the purchased phone numbers for this domain

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

api_instance = Daily::PhoneNumbersApi.new

begin
  # /purchased-phone-numbers
  api_instance.purchased_phone_nunbers
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->purchased_phone_nunbers: #{e}"
end
```

#### Using the purchased_phone_nunbers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> purchased_phone_nunbers_with_http_info

```ruby
begin
  # /purchased-phone-numbers
  data, status_code, headers = api_instance.purchased_phone_nunbers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->purchased_phone_nunbers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## release_phone_number

> Object release_phone_number(id)

release-phone-number/:id

Release a purchased number. The number is referenced by its id. A number cannot be deleted within the 14 days of purchase. Calling this API before this period expires results in an error.

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

api_instance = Daily::PhoneNumbersApi.new
id = 'id_example' # String | 

begin
  # release-phone-number/:id
  result = api_instance.release_phone_number(id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->release_phone_number: #{e}"
end
```

#### Using the release_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> release_phone_number_with_http_info(id)

```ruby
begin
  # release-phone-number/:id
  data, status_code, headers = api_instance.release_phone_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling PhoneNumbersApi->release_phone_number_with_http_info: #{e}"
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

