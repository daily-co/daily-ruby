# Daily::RecordingsApi

All URIs are relative to *https://api.daily.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_recording**](RecordingsApi.md#delete_recording) | **DELETE** /recordings/{recording_id} | recordings/:id |
| [**get_recording_info**](RecordingsApi.md#get_recording_info) | **GET** /recordings/{recording_id} | recordings/:id |
| [**get_recording_link**](RecordingsApi.md#get_recording_link) | **GET** /recordings/{recording_id}/access-link | recordings/:id/access-link |
| [**list_recordings**](RecordingsApi.md#list_recordings) | **GET** /recordings | /recordings |
| [**test_oci_bucket**](RecordingsApi.md#test_oci_bucket) | **GET** /recordings/test-oci-bucket | /recordings/test-oci-bucket |


## delete_recording

> <DeleteRecording200Response> delete_recording(recording_id)

recordings/:id

Delete a recording

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 

begin
  # recordings/:id
  result = api_instance.delete_recording(recording_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording: #{e}"
end
```

#### Using the delete_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteRecording200Response>, Integer, Hash)> delete_recording_with_http_info(recording_id)

```ruby
begin
  # recordings/:id
  data, status_code, headers = api_instance.delete_recording_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteRecording200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->delete_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |

### Return type

[**DeleteRecording200Response**](DeleteRecording200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recording_info

> <GetRecordingInfo200Response> get_recording_info(recording_id)

recordings/:id

Get info about a recording

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 

begin
  # recordings/:id
  result = api_instance.get_recording_info(recording_id)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_info: #{e}"
end
```

#### Using the get_recording_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecordingInfo200Response>, Integer, Hash)> get_recording_info_with_http_info(recording_id)

```ruby
begin
  # recordings/:id
  data, status_code, headers = api_instance.get_recording_info_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecordingInfo200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |

### Return type

[**GetRecordingInfo200Response**](GetRecordingInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recording_link

> <GetRecordingLink200Response> get_recording_link(recording_id, opts)

recordings/:id/access-link

Generate an access link for a recording. The `download_link` is a short-lived signed URL: see the [access links guide](/docs/rest-api/access-links) for more information.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RecordingsApi.new
recording_id = 'recording_id_example' # String | 
opts = {
  valid_for_secs: 56 # Integer | How long the returned `download_link` remains valid, in seconds. Accepts 900 (15 minutes) through 43200 (12 hours). A value outside that range returns a `400`.  Read the response's `expires` field rather than adding `valid_for_secs` to the current time. `expires` is the Unix timestamp at which the link stops working, and it is authoritative when Daily grants a shorter lifetime than the one requested.  Recordings stored in your own Amazon S3 bucket have a maximum link lifetime of 3600 seconds. A larger `valid_for_secs` still returns a `200`, with `expires` set one hour out and `validity_capped` set to `true`. Request a new link when you need the file again. Recordings in Daily storage and in customer-owned OCI Object Storage buckets are not affected. See [Custom S3 storage](/docs/guides/features/recording/custom-s3-storage#download-link-lifetime).
}

begin
  # recordings/:id/access-link
  result = api_instance.get_recording_link(recording_id, opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_link: #{e}"
end
```

#### Using the get_recording_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecordingLink200Response>, Integer, Hash)> get_recording_link_with_http_info(recording_id, opts)

```ruby
begin
  # recordings/:id/access-link
  data, status_code, headers = api_instance.get_recording_link_with_http_info(recording_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecordingLink200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->get_recording_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** |  |  |
| **valid_for_secs** | **Integer** | How long the returned &#x60;download_link&#x60; remains valid, in seconds. Accepts 900 (15 minutes) through 43200 (12 hours). A value outside that range returns a &#x60;400&#x60;.  Read the response&#39;s &#x60;expires&#x60; field rather than adding &#x60;valid_for_secs&#x60; to the current time. &#x60;expires&#x60; is the Unix timestamp at which the link stops working, and it is authoritative when Daily grants a shorter lifetime than the one requested.  Recordings stored in your own Amazon S3 bucket have a maximum link lifetime of 3600 seconds. A larger &#x60;valid_for_secs&#x60; still returns a &#x60;200&#x60;, with &#x60;expires&#x60; set one hour out and &#x60;validity_capped&#x60; set to &#x60;true&#x60;. Request a new link when you need the file again. Recordings in Daily storage and in customer-owned OCI Object Storage buckets are not affected. See [Custom S3 storage](/docs/guides/features/recording/custom-s3-storage#download-link-lifetime). | [optional][default to 3600] |

### Return type

[**GetRecordingLink200Response**](GetRecordingLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_recordings

> <ListRecordings200Response> list_recordings(opts)

/recordings

List recordings

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RecordingsApi.new
opts = {
  limit: 56, # Integer | 
  ending_before: 'ending_before_example', # String | 
  starting_after: 'starting_after_example', # String | 
  room_name: 'room_name_example' # String | 
}

begin
  # /recordings
  result = api_instance.list_recordings(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->list_recordings: #{e}"
end
```

#### Using the list_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRecordings200Response>, Integer, Hash)> list_recordings_with_http_info(opts)

```ruby
begin
  # /recordings
  data, status_code, headers = api_instance.list_recordings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRecordings200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->list_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **ending_before** | **String** |  | [optional] |
| **starting_after** | **String** |  | [optional] |
| **room_name** | **String** |  | [optional] |

### Return type

[**ListRecordings200Response**](ListRecordings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_oci_bucket

> <TestOciBucket200Response> test_oci_bucket(opts)

/recordings/test-oci-bucket

Verify that an OCI bucket configuration works, by uploading a small test file (`daily-co-test-upload.txt`) to it through the OCI S3 compatibility API.  Unlike S3 buckets, an OCI bucket configuration is **not** checked when you set it — the `Admit` policy may not have propagated yet (see the [custom OCI storage guide](/docs/guides/features/recording/custom-oci-storage)). Setting the property therefore succeeds even when the bucket is not usable, and this endpoint is how you confirm the setup before relying on it.  Only OCI buckets can be tested. Calling this against a bucket whose `storage_provider` is `aws` returns a `400`.  On success the response echoes the tested configuration under a key matching the `property` query parameter — `recordings_bucket` by default, or `transcription_bucket`. A `download_link` and `expires` are returned only when the configuration has `allow_api_access` set to `true`; the link is valid for one hour. Storage credentials are never included in the response.

### Examples

```ruby
require 'time'
require 'daily-ruby'
# setup authorization
Daily.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Daily::RecordingsApi.new
opts = {
  property: 'recordings_bucket', # String | Which bucket property to test. Defaults to `recordings_bucket`.
  room_name: 'room_name_example' # String | Test the property set on this room instead of the domain-level property. There is no fallback to the domain configuration: if the room does not set the property, the request returns a `400`.
}

begin
  # /recordings/test-oci-bucket
  result = api_instance.test_oci_bucket(opts)
  p result
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->test_oci_bucket: #{e}"
end
```

#### Using the test_oci_bucket_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestOciBucket200Response>, Integer, Hash)> test_oci_bucket_with_http_info(opts)

```ruby
begin
  # /recordings/test-oci-bucket
  data, status_code, headers = api_instance.test_oci_bucket_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestOciBucket200Response>
rescue Daily::ApiError => e
  puts "Error when calling RecordingsApi->test_oci_bucket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property** | **String** | Which bucket property to test. Defaults to &#x60;recordings_bucket&#x60;. | [optional][default to &#39;recordings_bucket&#39;] |
| **room_name** | **String** | Test the property set on this room instead of the domain-level property. There is no fallback to the domain configuration: if the room does not set the property, the request returns a &#x60;400&#x60;. | [optional] |

### Return type

[**TestOciBucket200Response**](TestOciBucket200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

