# Daily::RecordingErrorPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | A string describing the event that was emitted. | [optional] |
| **error_msg** | **String** | The error message returned. | [optional] |
| **instance_id** | **String** | The recording instance ID that was passed into the start recording command. | [optional] |
| **room_name** | **String** | The name of the room where the recording was made. | [optional] |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when the error was emitted. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingErrorPayload.new(
  action: null,
  error_msg: null,
  instance_id: null,
  room_name: null,
  timestamp: null
)
```

