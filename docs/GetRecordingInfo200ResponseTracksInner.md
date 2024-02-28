# Daily::GetRecordingInfo200ResponseTracksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The size of the file. | [optional] |
| **type** | **String** | The type of track file, audio or video. | [optional] |
| **s3key** | **String** | The S3 Key associated with this partiicular track file. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetRecordingInfo200ResponseTracksInner.new(
  size: 15620,
  type: audio,
  s3key: mydomain/test-recording-room/11245260397-audio
)
```

