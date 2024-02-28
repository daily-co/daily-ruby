# Daily::GetTranscriptInfo200ResponseOutParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **s3key** | **String** |  | [optional] |
| **bucket** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetTranscriptInfo200ResponseOutParams.new(
  s3key: mydomain/test-recording-room/11245260397,
  bucket: my-transcript-bucket,
  region: us-west-2
)
```

