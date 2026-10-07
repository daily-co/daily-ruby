# Daily::RoomPropertiesStreamingEndpointsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Used by the &#x60;startLiveStreaming()&#x60; API to reference which stream configuration to start. | [optional] |
| **type** | **String** | Whether the streaming endpoint is &#x60;rtmp&#x60; or &#x60;hls&#x60;. | [optional] |
| **rtmp_config** | [**RoomPropertiesStreamingEndpointsInnerRtmpConfig**](RoomPropertiesStreamingEndpointsInnerRtmpConfig.md) |  | [optional] |
| **hls_config** | [**RoomPropertiesStreamingEndpointsInnerHlsConfig**](RoomPropertiesStreamingEndpointsInnerHlsConfig.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesStreamingEndpointsInner.new(
  name: rtmp_ivs,
  type: hls,
  rtmp_config: null,
  hls_config: null
)
```

