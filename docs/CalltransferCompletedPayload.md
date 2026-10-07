# Daily::CalltransferCompletedPayload

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
| **is_sip_refer** | **Boolean** | true when the call-transfer was requested with sip-refer. | [optional] |
| **complete_status** | **String** | How the transfer ended, e.g. completed, failed, busy, no-answer, canceled. | [optional] |
| **refer_sip_response_code** | **String** | sip-refer only. The SIP response code the remote endpoint returned to the REFER; 202 when accepted. | [optional] |
| **notify_sip_response_code** | **String** | sip-refer only. The last SIP response code reported by the NOTIFY messages for the REFER, when the remote endpoint sends them. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CalltransferCompletedPayload.new(
  domain_id: null,
  room: null,
  timestamp: null,
  session_id: null,
  mtg_session_id: null,
  to_endpoint: null,
  from_endpoint: null,
  is_sip_refer: null,
  complete_status: null,
  refer_sip_response_code: null,
  notify_sip_response_code: null
)
```

