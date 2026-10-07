# Daily::DialinWarningPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **session_id** | **String** | The sessionId of the dial-in session. | [optional] |
| **domain_id** | **String** | ID of the domain corresponding to this dial-in event. | [optional] |
| **room** | **String** | The name of the room where dial-in event occurred. | [optional] |
| **error_msg** | **String** | string describing the warning. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialinWarningPayload.new(
  timestamp: null,
  session_id: null,
  domain_id: null,
  room: null,
  error_msg: null
)
```

