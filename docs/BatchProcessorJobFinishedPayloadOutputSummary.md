# Daily::BatchProcessorJobFinishedPayloadOutputSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | The filetype of this summary. | [optional] |
| **s3_config** | [**BatchProcessorJobFinishedPayloadOutputSoapS3Config**](BatchProcessorJobFinishedPayloadOutputSoapS3Config.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutputSummary.new(
  format: null,
  s3_config: null
)
```

