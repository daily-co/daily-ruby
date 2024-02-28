# Daily::DeleteTranscript200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** | A unique, opaque ID for this object. You can use this ID in API calls, and in paginated list operations. | [optional] |
| **domain_id** | **String** | The ID of the domain [domain](https://docs.daily.co/reference/rest-api/your-domain). | [optional] |
| **room_id** | **String** | The ID of the room [room](https://docs.daily.co/reference/rest-api/rooms). | [optional] |
| **mtg_session_id** | **String** | The meeting session ID for this transcription.[mtgSessionId](https://docs.daily.co/reference/rest-api/logs/config#mtgSessionId). | [optional] |
| **status** | **String** |  | [optional] |
| **duration** | **Integer** | Transcription length in seconds | [optional] |
| **out_params** | [**GetTranscriptInfo200ResponseOutParams**](GetTranscriptInfo200ResponseOutParams.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DeleteTranscript200Response.new(
  transcript_id: 0cb313e1-211f-4be0-833d-8c7305b19902,
  domain_id: null,
  room_id: 1a5afbf4-211f-4be0-833d-8c7305b19902,
  mtg_session_id: 257764e6-c74e-4c30-944a-a887a03173a3,
  status: t_finished,
  duration: 277,
  out_params: null
)
```

