# Daily::BatchProcessorJobFinishedPayloadOutputSoap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | The filetype of this SOAP note. | [optional] |
| **s3_config** | [**BatchProcessorJobFinishedPayloadOutputSoapS3Config**](BatchProcessorJobFinishedPayloadOutputSoapS3Config.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutputSoap.new(
  format: null,
  s3_config: null
)
```

