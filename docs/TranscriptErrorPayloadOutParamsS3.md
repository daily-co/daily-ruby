# Daily::TranscriptErrorPayloadOutParamsS3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The S3 key for the transcription output file. | [optional] |
| **bucket** | **String** | The S3 bucket where the transcription output is stored. | [optional] |
| **region** | **String** | The AWS region of the S3 bucket. | [optional] |
| **external_id** | **String** | An external identifier for the S3 configuration. | [optional] |
| **assume_role_arn** | **String** | The ARN of the role assumed for S3 access. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptErrorPayloadOutParamsS3.new(
  key: null,
  bucket: null,
  region: null,
  external_id: null,
  assume_role_arn: null
)
```

