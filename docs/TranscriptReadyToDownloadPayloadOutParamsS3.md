# Daily::TranscriptReadyToDownloadPayloadOutParamsS3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The S3 key for the transcription output file. | [optional] |
| **bucket** | **String** | The S3 bucket where the transcription output is stored. | [optional] |
| **region** | **String** | The AWS region of the S3 bucket. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptReadyToDownloadPayloadOutParamsS3.new(
  key: null,
  bucket: null,
  region: null
)
```

