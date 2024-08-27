# Daily::BatchProcessorJobFinishedPayloadOutputSoapS3Config

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket** | **String** | The s3 bucket containing this file. | [optional] |
| **key** | **String** | The s3 object location of this file. | [optional] |
| **region** | **String** | The s3 bucket region. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutputSoapS3Config.new(
  bucket: null,
  key: null,
  region: null
)
```

