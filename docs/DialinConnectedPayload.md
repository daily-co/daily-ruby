# Daily::DialinConnectedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **session_id** | **String** | The sessionId of the dial-in session. | [optional] |
| **sip_from** | **String** | sip address of the incoming call. | [optional] |
| **domain_id** | **String** | ID of the domain corresponding to this dial-in event. | [optional] |
| **room** | **String** | The name of the room where dial-in event occurred. | [optional] |
| **display_name** | **String** | name displayed for the incoming user. | [optional] |
| **sip_headers** | **Object** | sip header and header values in the incoming sip invite. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialinConnectedPayload.new(
  timestamp: null,
  session_id: null,
  sip_from: null,
  domain_id: null,
  room: null,
  display_name: null,
  sip_headers: null
)
```

