# Daily::MeetingTokenRequestProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** |  |  |
| **eject_at_token_exp** | **Boolean** |  | [optional] |
| **nbf** | **Integer** |  | [optional] |
| **exp** | **Integer** |  | [optional] |
| **is_owner** | **Boolean** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **enable_screenshare** | **Boolean** |  | [optional] |
| **start_video_off** | **Boolean** |  | [optional] |
| **start_audio_off** | **Boolean** |  | [optional] |
| **enable_recording** | **String** |  | [optional] |
| **enable_prejoin_ui** | **Boolean** |  | [optional] |
| **enable_live_captions_ui** | **Boolean** |  | [optional] |
| **enable_recording_ui** | **Boolean** |  | [optional] |
| **enable_terse_logging** | **Boolean** |  | [optional] |
| **auto_start_transcription** | **Boolean** |  | [optional] |
| **close_tab_on_exit** | **Boolean** |  | [optional] |
| **redirect_on_meeting_exit** | **String** |  | [optional] |
| **lang** | **String** |  | [optional] |
| **permissions** | [**MeetingTokenRequestPropertiesPermissions**](MeetingTokenRequestPropertiesPermissions.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingTokenRequestProperties.new(
  room_name: null,
  eject_at_token_exp: null,
  nbf: null,
  exp: null,
  is_owner: null,
  user_name: null,
  user_id: null,
  enable_screenshare: null,
  start_video_off: null,
  start_audio_off: null,
  enable_recording: null,
  enable_prejoin_ui: null,
  enable_live_captions_ui: null,
  enable_recording_ui: null,
  enable_terse_logging: null,
  auto_start_transcription: null,
  close_tab_on_exit: null,
  redirect_on_meeting_exit: null,
  lang: null,
  permissions: null
)
```

