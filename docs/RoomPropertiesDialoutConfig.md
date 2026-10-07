# Daily::RoomPropertiesDialoutConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_room_start** | **Boolean** | Setting this to true allows starting the room and initiating the dial-out even though there is no user present in the room. By default, initiating a [dial-out](/products/rest-api/rooms/dialout/start) via the REST API fails when the corresponding room is empty (without any participant). | [optional] |
| **dialout_geo** | **String** | The region where SFU is selected to start the room. default is taken from [&#x60;room geo&#x60;](/products/rest-api/rooms/config#geo) else from [&#x60;domain geo&#x60;](/products/rest-api/your-domain/config#geo) and if both are not defined &#x60;us-west-2&#x60; is take as default. | [optional] |
| **max_idle_timeout_sec** | **Float** | Number of seconds where dial-out user can be alone in the room. dial-out user can start the room and can remain in the room alone waiting for other participant for this duration, also when all the web users leave the room, room is automatically closed, this property allows dial-out user to remain in room after all web users leave the room. | [optional] |
| **max_idle_timeout_post_conversation_sec** | **Float** | Number of seconds the dial-out participant stays in the room after the other participants have left. Has no default: when unset, &#x60;max_idle_timeout_sec&#x60; applies to both waits, which is the behaviour from before this property existed. &#x60;max_idle_timeout_sec&#x60; controls how long the participant waits *for* someone to join; this controls how long it stays once they have gone. Set &#x60;0&#x60; to hang up as soon as the last remote participant leaves. A participant who joins and leaves counts even if the dial-out call was never answered. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesDialoutConfig.new(
  allow_room_start: null,
  dialout_geo: ap-south-1,
  max_idle_timeout_sec: null,
  max_idle_timeout_post_conversation_sec: null
)
```

