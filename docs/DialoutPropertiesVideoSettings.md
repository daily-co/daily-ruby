# Daily::DialoutPropertiesVideoSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Integer** | Video width in pixels. Default: 1280. Maximum: 1280. | [optional] |
| **height** | **Integer** | Video height in pixels. Default: 720. Maximum: 720. | [optional] |
| **fps** | **Integer** | Video frame rate. Default: 15. Maximum: 30. | [optional] |
| **video_bitrate** | **Integer** | Video bitrate in kbps. Default: 900. Maximum: 1000. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutPropertiesVideoSettings.new(
  width: null,
  height: null,
  fps: null,
  video_bitrate: null
)
```

