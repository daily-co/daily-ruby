# Daily::RoomRequestProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nbf** | **Integer** |  | [optional] |
| **exp** | **Integer** |  | [optional] |
| **max_participants** | **Integer** |  | [optional] |
| **enable_people_ui** | **Boolean** |  | [optional] |
| **enable_pip_ui** | **Boolean** |  | [optional] |
| **enable_emoji_reactions** | **Boolean** |  | [optional] |
| **enable_hand_raising** | **Boolean** |  | [optional] |
| **enable_prejoin_ui** | **Boolean** |  | [optional] |
| **enable_live_captions_ui** | **Boolean** |  | [optional] |
| **enable_network_ui** | **Boolean** |  | [optional] |
| **enable_noise_cancellation_ui** | **Boolean** |  | [optional] |
| **enable_breakout_rooms** | **Boolean** |  | [optional] |
| **enable_knocking** | **Boolean** |  | [optional] |
| **enable_screenshare** | **Boolean** |  | [optional] |
| **enable_video_processing_ui** | **Boolean** |  | [optional] |
| **enable_chat** | **Boolean** |  | [optional] |
| **start_video_off** | **Boolean** |  | [optional] |
| **start_audio_off** | **Boolean** |  | [optional] |
| **owner_only_broadcast** | **Boolean** |  | [optional] |
| **enable_recording** | **String** |  | [optional] |
| **eject_at_room_exp** | **Boolean** |  | [optional] |
| **eject_after_elapsed** | **Boolean** |  | [optional] |
| **enable_advanced_chat** | **Boolean** |  | [optional] |
| **enable_hidden_participants** | **Boolean** |  | [optional] |
| **enable_mesh_sfu** | **Boolean** |  | [optional] |
| **sfu_switchover** | **Float** |  | [optional] |
| **experimental_optimize_large_calls** | **Boolean** |  | [optional] |
| **lang** | **String** |  | [optional] |
| **meeting_join_hook** | **String** |  | [optional] |
| **geo** | **String** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomRequestProperties.new(
  nbf: null,
  exp: null,
  max_participants: null,
  enable_people_ui: null,
  enable_pip_ui: null,
  enable_emoji_reactions: null,
  enable_hand_raising: null,
  enable_prejoin_ui: null,
  enable_live_captions_ui: null,
  enable_network_ui: null,
  enable_noise_cancellation_ui: null,
  enable_breakout_rooms: null,
  enable_knocking: null,
  enable_screenshare: null,
  enable_video_processing_ui: null,
  enable_chat: null,
  start_video_off: null,
  start_audio_off: null,
  owner_only_broadcast: null,
  enable_recording: null,
  eject_at_room_exp: null,
  eject_after_elapsed: null,
  enable_advanced_chat: null,
  enable_hidden_participants: null,
  enable_mesh_sfu: null,
  sfu_switchover: null,
  experimental_optimize_large_calls: null,
  lang: null,
  meeting_join_hook: null,
  geo: null
)
```

