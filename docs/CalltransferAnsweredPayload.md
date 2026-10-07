# Daily::CalltransferAnsweredPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** | ID of the domain corresponding to this call-transfer event. | [optional] |
| **room** | **String** | The name of the room where call-transfer event occurred. | [optional] |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when this event occurred. | [optional] |
| **session_id** | **String** | The session_id of sip participant which triggered the call-transfer. | [optional] |
| **mtg_session_id** | **String** | The meeting session id of the room where call-transfer was triggered. | [optional] |
| **to_endpoint** | **String** | the destination sip endpoint to which the call-transfer was initiated. | [optional] |
| **from_endpoint** | **String** | the source sip endpoint from which the call-transfer was initiated. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CalltransferAnsweredPayload.new(
  domain_id: null,
  room: null,
  timestamp: null,
  session_id: null,
  mtg_session_id: null,
  to_endpoint: null,
  from_endpoint: null
)
```

