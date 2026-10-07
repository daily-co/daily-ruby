# Daily::GetTranscriptInfo200ResponseOutParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **s3key** | **String** |  | [optional] |
| **bucket** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **storage_provider** | **String** | The storage provider the transcript was written to. &#x60;aws&#x60; for Amazon S3 (including Daily&#39;s own storage), &#x60;oci&#x60; for OCI Object Storage. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetTranscriptInfo200ResponseOutParams.new(
  s3key: mydomain/test-recording-room/11245260397,
  bucket: my-transcript-bucket,
  region: us-west-2,
  storage_provider: aws
)
```

