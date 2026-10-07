# Daily::TranscriptReadyToDownloadPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the transcription event. | [optional] |
| **out_params** | [**TranscriptReadyToDownloadPayloadOutParams**](TranscriptReadyToDownloadPayloadOutParams.md) |  | [optional] |
| **room_id** | **String** | The ID of the room where the event occurred. | [optional] |
| **room_name** | **String** | The name of the room where the event occurred. | [optional] |
| **mtg_session_id** | **String** | The meeting session ID related to the event. | [optional] |
| **duration** | **Float** | The duration of the session in seconds. | [optional] |
| **participant_minutes** | **Float** | The cumulative participant minutes for the transcription session. | [optional] |
| **status** | **String** | The current status of the transcription event. | [optional] |
| **domain_id** | **String** | The ID of the domain corresponding to this transcription event. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptReadyToDownloadPayload.new(
  id: null,
  out_params: null,
  room_id: null,
  room_name: null,
  mtg_session_id: null,
  duration: null,
  participant_minutes: null,
  status: null,
  domain_id: null
)
```

