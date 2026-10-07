# Daily::DeleteRecording200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **s3_bucket** | **String** |  | [optional] |
| **s3_region** | **String** |  | [optional] |
| **s3_key** | **String** |  | [optional] |
| **storage_provider** | **String** | The storage provider the recording was written to. &#x60;aws&#x60; for Amazon S3 (including Daily&#39;s own storage), &#x60;oci&#x60; for OCI Object Storage. Returned only for recordings stored in a customer-managed bucket; absent for recordings held in Daily&#39;s own storage. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DeleteRecording200Response.new(
  deleted: null,
  id: null,
  s3_bucket: null,
  s3_region: null,
  s3_key: null,
  storage_provider: aws
)
```

