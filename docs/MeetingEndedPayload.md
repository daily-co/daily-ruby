# Daily::MeetingEndedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_ts** | **Float** | The Unix epoch time in seconds representing when the meeting started. | [optional] |
| **end_ts** | **Float** | The Unix epoch time in seconds representing when the meeting ended. | [optional] |
| **meeting_id** | **String** | The meeting ID. | [optional] |
| **room** | **String** | The name of the room. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingEndedPayload.new(
  start_ts: null,
  end_ts: null,
  meeting_id: null,
  room: null
)
```

