# Daily::RecordingStartedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recording_id** | **String** | An ID identifying the recording that was generated. | [optional] |
| **action** | **String** | A string describing the event that was emitted. | [optional] |
| **layout** | [**DailyStreamingLayoutConfig**](.md) |  | [optional] |
| **started_by** | **String** | The participant ID of the user who started the recording. | [optional] |
| **instance_id** | **String** | The recording instance ID that was passed into the start recording command. | [optional] |
| **start_ts** | **Integer** | The Unix epoch time in seconds representing when the recording started. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingStartedPayload.new(
  recording_id: null,
  action: null,
  layout: null,
  started_by: null,
  instance_id: null,
  start_ts: null
)
```

