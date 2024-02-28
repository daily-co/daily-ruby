# Daily::ValidateMeetingToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  | [optional] |
| **is_owner** | **Boolean** |  | [optional][default to true] |
| **user_name** | **String** |  | [optional] |
| **start_video_off** | **Boolean** |  | [optional][default to true] |
| **start_audio_off** | **Boolean** |  | [optional][default to true] |
| **lang** | **String** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ValidateMeetingToken200Response.new(
  room_name: EevVrrxee4JBxKzmKkjC,
  is_owner: true,
  user_name: host,
  start_video_off: false,
  start_audio_off: true,
  lang: en
)
```

