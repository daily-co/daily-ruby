# Daily::RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Output width. Min: &#x60;32&#x60;. Max: &#x60;1920&#x60;. | [optional] |
| **height** | **Float** | Output height. Min: &#x60;32&#x60;. Max: &#x60;1920&#x60;. For portrait mode, the height can be greater than the width.  | [optional] |
| **fps** | **Float** | Output FPS. Min: &#x60;1&#x60;. Max: &#x60;30&#x60;. | [optional] |
| **bitrate** | **Float** | Bitrate in kilobits per second (kbps). Min: &#x60;100&#x60;. Max: &#x60;5000&#x60;. | [optional] |
| **iframe_only** | **Boolean** | Whether this variant is iframe-only. One iframe is generated for each segment. If &#x60;true&#x60;, the &#x60;fps&#x60; property is ignored. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner.new(
  width: null,
  height: null,
  fps: null,
  bitrate: null,
  iframe_only: null
)
```

