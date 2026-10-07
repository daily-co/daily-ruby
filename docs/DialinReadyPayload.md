# Daily::DialinReadyPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **domain_id** | **String** | ID of the domain corresponding to this dial-in event. | [optional] |
| **room** | **String** | The name of the room where the dial-in event occurred. | [optional] |
| **sip_endpoint** | **String** | sip endpoint associated with the room, which is ready to receive call. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialinReadyPayload.new(
  timestamp: null,
  domain_id: null,
  room: null,
  sip_endpoint: null
)
```

