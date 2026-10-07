# Daily::RoomPropertiesStreamingEndpointsInnerHlsConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage** | [**RoomPropertiesStreamingEndpointsInnerHlsConfigStorage**](RoomPropertiesStreamingEndpointsInnerHlsConfigStorage.md) |  |  |
| **save_hls_recording** | **Boolean** | If &#x60;true&#x60;, the live stream will be saved as a recording after streaming has ended. If &#x60;false&#x60;, the stream is available only until the streaming is live. |  |
| **variants** | [**Array&lt;RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner&gt;**](RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner.md) | An optional array of variants to generate for HLS. For most use cases this property can be omitted as Daily uses sensible defaults. The array defines the resolution, FPS, and bitrate for each variant. The following limitations apply:  - There can be a maximum of one variant with 1080p resolution. All other variants must be less than or equal to 720p. - A maximum of four variants can be specified, other than iframe-only stream - We do not support iframe-only variant, at least one full-stream variant is required | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesStreamingEndpointsInnerHlsConfig.new(
  storage: null,
  save_hls_recording: null,
  variants: null
)
```

