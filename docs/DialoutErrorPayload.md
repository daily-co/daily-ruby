# Daily::DialoutErrorPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **session_id** | **String** | The sessionId of the dial-out session. | [optional] |
| **user_id** | **String** | The userId of the dial-out session (if supplied during the API call). | [optional] |
| **domain_id** | **String** | ID of the domain for which dial-out has error. | [optional] |
| **room** | **String** | The name of the room where dial-out has error. | [optional] |
| **error_msg** | **String** | message describing the error | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutErrorPayload.new(
  timestamp: null,
  session_id: null,
  user_id: null,
  domain_id: null,
  room: null,
  error_msg: null
)
```

