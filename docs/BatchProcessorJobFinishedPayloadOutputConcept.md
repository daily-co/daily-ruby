# Daily::BatchProcessorJobFinishedPayloadOutputConcept

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | The filetype of these concepts. | [optional] |
| **s3_config** | [**BatchProcessorJobFinishedPayloadOutputSoapS3Config**](BatchProcessorJobFinishedPayloadOutputSoapS3Config.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutputConcept.new(
  format: null,
  s3_config: null
)
```

