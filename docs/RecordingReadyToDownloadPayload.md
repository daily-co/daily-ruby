# Daily::RecordingReadyToDownloadPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of recording that was generated. | [optional] |
| **recording_id** | **String** | An ID identifying the recording that was generated. | [optional] |
| **room_name** | **String** | The name of the room where the recording was made. | [optional] |
| **start_ts** | **Integer** | The Unix epoch time in seconds representing when the recording started. | [optional] |
| **status** | **String** | The status of the given recording. | [optional] |
| **max_participants** | **Integer** | The number of participants on the call that were recorded. | [optional] |
| **duration** | **Integer** | The duration in seconds of the call. | [optional] |
| **s3_key** | **String** | The location of the recording in the provided S3 bucket. | [optional] |
| **tracks** | [**Array&lt;GetRecordingInfo200ResponseTracksInner&gt;**](GetRecordingInfo200ResponseTracksInner.md) | If the recording is a raw-tracks recording, a tracks field will be provided. If role permissions have been removed, the tracks field may be null. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingReadyToDownloadPayload.new(
  type: null,
  recording_id: null,
  room_name: null,
  start_ts: null,
  status: null,
  max_participants: null,
  duration: null,
  s3_key: null,
  tracks: null
)
```

