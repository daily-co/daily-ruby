# Daily::MeetingStartedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_ts** | **Float** | The Unix epoch time in seconds representing when meeting started. | [optional] |
| **meeting_id** | **String** | The meeting ID. | [optional] |
| **room** | **String** | The name of the room. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingStartedPayload.new(
  start_ts: null,
  meeting_id: null,
  room: null
)
```

