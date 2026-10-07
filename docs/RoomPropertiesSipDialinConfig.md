# Daily::RoomPropertiesSipDialinConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_room_start** | **Boolean** | Setting this to true lets the dial-in call start the room even though no other participant is present. By default a call into an empty room does not start the meeting. | [optional] |
| **dialin_geo** | **String** | The region where the SFU is selected to start the room. Default is taken from [&#x60;room geo&#x60;](/products/rest-api/rooms/config#geo), else from [&#x60;domain geo&#x60;](/products/rest-api/your-domain/config#geo); if neither is defined &#x60;us-west-2&#x60; is used. | [optional] |
| **max_idle_timeout_sec** | **Float** | Number of seconds the dial-in participant may be alone in the room waiting *for* someone to join. When it elapses with nobody else present the call is hung up and the room closes. | [optional] |
| **max_idle_timeout_post_conversation_sec** | **Float** | Number of seconds the dial-in participant stays in the room after the other participants have left. Has no default: when unset, &#x60;max_idle_timeout_sec&#x60; applies to both waits, which is the behaviour from before this property existed. &#x60;max_idle_timeout_sec&#x60; controls how long the participant waits *for* someone to join; this controls how long it stays once they have gone. Set &#x60;0&#x60; to hang up as soon as the last remote participant leaves. A participant who joins and leaves counts even if the caller was never bridged in. | [optional] |
| **hold_music_enabled** | **Boolean** | Play hold music to the dial-in caller from the moment the call is answered until the first other participant publishes audio, then fade it out; the music stops after at most 60 seconds in any case. Without it the caller hears silence while waiting, for example for a bot to join. Rooms created by a [SIP trunk](/guides/features/dial-in-dial-out/sip-trunk) default this to &#x60;true&#x60;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesSipDialinConfig.new(
  allow_room_start: null,
  dialin_geo: ap-south-1,
  max_idle_timeout_sec: null,
  max_idle_timeout_post_conversation_sec: null,
  hold_music_enabled: null
)
```

