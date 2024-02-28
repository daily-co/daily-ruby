# Daily::RecordingStreamingOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Property that specifies the output width of the given stream. | [optional] |
| **height** | **Float** | Property that specifies the output height of the given stream. | [optional] |
| **fps** | **Float** | Property that specifies the video frame rate per second. | [optional] |
| **video_bitrate** | **Float** | Property that specifies the video bitrate for the output video in kilobits per second (kbps). | [optional] |
| **audio_bitrate** | **Float** | Property that specifies the audio bitrate for the output audio in kilobits per second (kbps). | [optional] |
| **min_idle_time_out** | **Float** | Amount of time in seconds to wait before ending a recording or live stream when the room is idle (e.g. when all users have muted video and audio). Default: 300 (seconds). Note: Once the timeout has been reached, it typically takes an additional 1-3 minutes for the recording or live stream to be shut down. | [optional] |
| **max_duration** | **Float** | Maximum duration in seconds after which recording/streaming is forcefully stopped. Default: \\&#x60;15000\\&#x60; seconds (3 hours). This is a preventive circuit breaker to prevent billing surprises in case a user starts recording/streaming and leaves the room. | [optional] |
| **background_color** | **String** | Specifies the background color of the stream, formatted as \\#rrggbb or \\#aarrggbb string. | [optional] |
| **instance_id** | **String** | UUID for a streaming or recording session. Used when multiple streaming or recording sessions are running for single room. | [optional] |
| **type** | **String** | The type of recording that will be started. | [optional][default to &#39;cloud&#39;] |
| **layout** | [**DailyStreamingLayoutConfig**](DailyStreamingLayoutConfig.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingStreamingOptions.new(
  width: null,
  height: null,
  fps: null,
  video_bitrate: null,
  audio_bitrate: null,
  min_idle_time_out: null,
  max_duration: null,
  background_color: null,
  instance_id: null,
  type: null,
  layout: null
)
```

