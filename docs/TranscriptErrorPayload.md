# Daily::TranscriptErrorPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the transcription event. | [optional] |
| **info** | [**TranscriptErrorPayloadInfo**](TranscriptErrorPayloadInfo.md) |  | [optional] |
| **room_id** | **String** | The ID of the room where the event occurred. | [optional] |
| **room_name** | **String** | The name of the room where the event occurred. | [optional] |
| **mtg_session_id** | **String** | The meeting session ID related to the event. | [optional] |
| **max_participants** | **Integer** | The maximum number of participants allowed in the transcription session. | [optional] |
| **duration** | **Float** | The duration of the session in seconds. | [optional] |
| **participant_minutes** | **Float** | The cumulative participant minutes for the transcription session. | [optional] |
| **status** | **String** | The current status of the transcription event. | [optional] |
| **out_params** | [**TranscriptErrorPayloadOutParams**](TranscriptErrorPayloadOutParams.md) |  | [optional] |
| **error** | **String** | The error message associated with the transcription event. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptErrorPayload.new(
  id: null,
  info: null,
  room_id: null,
  room_name: null,
  mtg_session_id: null,
  max_participants: null,
  duration: null,
  participant_minutes: null,
  status: null,
  out_params: null,
  error: null
)
```

