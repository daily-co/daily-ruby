# Daily::TranscriptErrorPayloadInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_id** | **String** | The instance ID related to the event. | [optional] |
| **start_ts** | **Integer** | The Unix epoch time in seconds representing the start time of the transcription. | [optional] |
| **end_ts** | **Integer** | The Unix epoch time in seconds representing the end time of the transcription. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptErrorPayloadInfo.new(
  instance_id: null,
  start_ts: null,
  end_ts: null
)
```

