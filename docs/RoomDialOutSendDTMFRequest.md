# Daily::RoomDialOutSendDTMFRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The participant ID of the dialOut session |  |
| **tones** | **String** | Combined string of DTMF tones to send (e.g., \&quot;1234#\&quot;). Maximum 20 characters. |  |
| **digit_duration_ms** | **Integer** | Duration in milliseconds that Daily signals for each DTMF digit. This is not the gap between digits: when several tones are sent in one request over SIP INFO, Daily waits a fixed 100ms between them and that gap is not configurable. Must be between 50 and 2000. The default duration is 500ms. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomDialOutSendDTMFRequest.new(
  session_id: null,
  tones: null,
  digit_duration_ms: null
)
```

