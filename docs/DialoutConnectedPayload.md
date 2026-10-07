# Daily::DialoutConnectedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **session_id** | **String** | The sessionId of the dial-out session. | [optional] |
| **user_id** | **String** | The userId of the dial-out session (if supplied during the API call). | [optional] |
| **domain_id** | **String** | ID of the domain for which dial-out event occurred. | [optional] |
| **room** | **String** | The name of the room where dial-out event occurred. | [optional] |
| **destination** | **String** | phoneNumber (E.194 format) or the sipUri (begins with sip:) being called. | [optional] |
| **caller_id** | **String** | callerId used for the dial-out | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutConnectedPayload.new(
  timestamp: null,
  session_id: null,
  user_id: null,
  domain_id: null,
  room: null,
  destination: null,
  caller_id: null
)
```

