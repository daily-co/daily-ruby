# Daily::BatchProcessorJobFinishedPayloadOutputTranscriptionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | The filetype of this transcription. | [optional] |
| **s3_config** | [**BatchProcessorJobFinishedPayloadOutputSoapS3Config**](BatchProcessorJobFinishedPayloadOutputSoapS3Config.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutputTranscriptionInner.new(
  format: null,
  s3_config: null
)
```

