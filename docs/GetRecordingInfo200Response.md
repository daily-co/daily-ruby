# Daily::GetRecordingInfo200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique, opaque ID for this object. You can use this ID in API calls, and in paginated list operations. | [optional] |
| **room_name** | **String** | The name of the [room](https://docs.daily.co/reference/rest-api/rooms). | [optional] |
| **start_ts** | **Integer** | When the recording started. This is a unix timestamp (seconds since the epoch). | [optional] |
| **status** | **String** |  | [optional] |
| **max_participants** | **Integer** | The maximum number of participants that were ever in this room together during the meeting session that was recorded. | [optional] |
| **duration** | **Integer** | How many seconds long the recording is, approximately. This property is not returned for recordings that are in-progress. | [optional] |
| **share_token** | **String** | Deprecated. | [optional] |
| **s3key** | **String** | The S3 Key associated with this recording. | [optional] |
| **mtg_session_id** | **String** | The meeting session ID for this recording. | [optional] |
| **tracks** | [**Array&lt;GetRecordingInfo200ResponseTracksInner&gt;**](GetRecordingInfo200ResponseTracksInner.md) | If the recording is a raw-tracks recording, a tracks field will be provided. If role permissions have been removed, the tracks field may be null. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetRecordingInfo200Response.new(
  id: 0cb313e1-211f-4be0-833d-8c7305b19902,
  room_name: null,
  start_ts: 1548789650,
  status: finished,
  max_participants: 2,
  duration: 277,
  share_token: TivXjlD22QQt,
  s3key: mydomain/test-recording-room/11245260397,
  mtg_session_id: 257764e6-c74e-4c30-944a-a887a03173a3,
  tracks: null
)
```

