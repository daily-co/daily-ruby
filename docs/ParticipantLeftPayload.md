# Daily::ParticipantLeftPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **joined_at** | **Float** | The Unix epoch time in seconds representing when the participant joined. | [optional] |
| **duration** | **Float** | The time in seconds representing how long the participant was in the call. | [optional] |
| **session_id** | **String** | The user session ID, or participant id. | [optional] |
| **room** | **String** | The name of the room. | [optional] |
| **user_id** | **String** | The ID of the user, set by the meeting token. | [optional] |
| **user_name** | **String** | The name of the user, set by the meeting token. | [optional] |
| **owner** | **Boolean** | A flag determining if this user is considered the owner. | [optional] |
| **will_eject_at** | **Float** | The Unix epoch time in seconds representing when the participant will be ejected. | [optional] |
| **permissions** | [**ParticipantJoinedPayloadPermissions**](ParticipantJoinedPayloadPermissions.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ParticipantLeftPayload.new(
  joined_at: null,
  duration: null,
  session_id: null,
  room: null,
  user_id: null,
  user_name: null,
  owner: null,
  will_eject_at: null,
  permissions: null
)
```

