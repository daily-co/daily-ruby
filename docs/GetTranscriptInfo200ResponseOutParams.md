# Daily::GetTranscriptInfo200ResponseOutParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **s3Key** | **String** |  | [optional] |
| **bucket** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetTranscriptInfo200ResponseOutParams.new(
  s3Key: mydomain/test-recording-room/11245260397,
  bucket: my-transcript-bucket,
  region: us-west-2
)
```

