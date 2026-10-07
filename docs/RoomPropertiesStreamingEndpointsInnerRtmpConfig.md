# Daily::RoomPropertiesStreamingEndpointsInnerRtmpConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The RTMP or RTMPS URL to stream to, including the stream key. |  |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesStreamingEndpointsInnerRtmpConfig.new(
  url: rtmps://exampleYouTubeServer.com:443/stream
)
```

