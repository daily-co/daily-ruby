# Daily::LogsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_api_logs**](LogsApi.md#list_api_logs) | **GET** /logs/api | /logs/api |
| [**list_logs**](LogsApi.md#list_logs) | **GET** /logs | /logs |


## list_api_logs

> <ListAPILogs200Response> list_api_logs(opts)

/logs/api

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

api_instance = Daily::LogsApi.new
opts = {
  starting_after: 'starting_after_example', # String | Given the log ID, will return all records after that ID. See [pagination docs](../../rest-api#pagination)
  ending_before: 'ending_before_example', # String | Given the log ID, will return all records before that ID. See [pagination docs](../../rest-api#pagination)
  limit: 56, # Integer | Limit the number of logs and/or metrics returned
  source: 'source_example', # String | The source of the given logs, either `\"api\"` or `\"webhook\"`
  url: 'url_example' # String | Either the webhook server URL, or the API endpoint that was logged
}

begin
  # /logs/api
  result = api_instance.list_api_logs(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling LogsApi->list_api_logs: #{e}"
end
```

#### Using the list_api_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAPILogs200Response>, Integer, Hash)> list_api_logs_with_http_info(opts)

```ruby
begin
  # /logs/api
  data, status_code, headers = api_instance.list_api_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAPILogs200Response>
rescue Daily::ApiError => e
  puts "Error when calling LogsApi->list_api_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_after** | **String** | Given the log ID, will return all records after that ID. See [pagination docs](../../rest-api#pagination) | [optional] |
| **ending_before** | **String** | Given the log ID, will return all records before that ID. See [pagination docs](../../rest-api#pagination) | [optional] |
| **limit** | **Integer** | Limit the number of logs and/or metrics returned | [optional][default to 20] |
| **source** | **String** | The source of the given logs, either &#x60;\&quot;api\&quot;&#x60; or &#x60;\&quot;webhook\&quot;&#x60; | [optional][default to &#39;\&quot;api\&quot;&#39;] |
| **url** | **String** | Either the webhook server URL, or the API endpoint that was logged | [optional] |

### Return type

[**ListAPILogs200Response**](ListAPILogs200Response.md)

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_logs

> Object list_logs(opts)

/logs

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

api_instance = Daily::LogsApi.new
opts = {
  include_logs: true, # Boolean | If true, you get a \"logs\" array in the results
  include_metrics: true, # Boolean | If true, results have \"metrics\" array
  user_session_id: 'user_session_id_example', # String | Filters by this user ID (aka \"participant ID\"). Required if `mtgSessionId` is not present in the request
  mtg_session_id: 'mtg_session_id_example', # String | Filters by this Session ID. Required if `userSessionId` is not present in the request
  log_level: 'ERROR', # String | Filters by the given log level name
  order: 'order_example', # String | ASC or DESC, case insensitive
  start_time: 56, # Integer | A JS timestamp (ms since epoch in UTC)
  end_time: 56, # Integer | A JS timestamp (ms since epoch), defaults to the current time
  limit: 56, # Integer | Limit the number of logs and/or metrics returned
  offset: 56 # Integer | Number of records to skip before returning results
}

begin
  # /logs
  result = api_instance.list_logs(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling LogsApi->list_logs: #{e}"
end
```

#### Using the list_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> list_logs_with_http_info(opts)

```ruby
begin
  # /logs
  data, status_code, headers = api_instance.list_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Daily::ApiError => e
  puts "Error when calling LogsApi->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_logs** | **Boolean** | If true, you get a \&quot;logs\&quot; array in the results | [optional][default to true] |
| **include_metrics** | **Boolean** | If true, results have \&quot;metrics\&quot; array | [optional][default to false] |
| **user_session_id** | **String** | Filters by this user ID (aka \&quot;participant ID\&quot;). Required if &#x60;mtgSessionId&#x60; is not present in the request | [optional] |
| **mtg_session_id** | **String** | Filters by this Session ID. Required if &#x60;userSessionId&#x60; is not present in the request | [optional] |
| **log_level** | **String** | Filters by the given log level name | [optional] |
| **order** | **String** | ASC or DESC, case insensitive | [optional][default to &#39;DESC&#39;] |
| **start_time** | **Integer** | A JS timestamp (ms since epoch in UTC) | [optional] |
| **end_time** | **Integer** | A JS timestamp (ms since epoch), defaults to the current time | [optional] |
| **limit** | **Integer** | Limit the number of logs and/or metrics returned | [optional][default to 20] |
| **offset** | **Integer** | Number of records to skip before returning results | [optional][default to 0] |

### Return type

**Object**

### Authorization

[sec0](../README.md#sec0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

