# Daily::WaitingParticipantJoinedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **joined_at** | **Float** | The Unix epoch time in seconds representing when the waiting participant joined. | [optional] |
| **duration** | **Float** | The time in seconds between &#x60;joined_at&#x60; and when the event was generated. For this event that is effectively zero. | [optional] |
| **session_id** | **String** | The user session ID, or participant id. | [optional] |
| **room** | **String** | The name of the room. | [optional] |
| **user_id** | **String** | The ID of the user. This is the &#x60;user_id&#x60; you set on their meeting token. If the participant joined without a meeting token, this field is left out of the payload. SIP and PSTN participants get this from their dial-in or dial-out setup instead. | [optional] |
| **user_name** | **String** | The participant&#39;s current name. It starts out as the &#x60;user_name&#x60; from their meeting token, or the &#x60;userName&#x60; call property if they joined without one, and if the name is changed later with &#x60;setUserName()&#x60; the webhook sends the new name. &#x60;null&#x60; when no name is set. | [optional] |
| **user_data** | **Object** | Any custom JSON data set for this participant, from the &#x60;userData&#x60; call property at join or from &#x60;setUserData()&#x60; later. It does not come from the meeting token. Left out of the payload when no user data is set. | [optional] |
| **participant_type** | **String** | Only sent for SIP and PSTN participants. Regular web participants do not have this field. | [optional] |
| **owner** | **Boolean** | A flag determining if this user is considered the owner. | [optional] |
| **will_eject_at** | **Float** | The Unix epoch time in seconds representing when the participant will be ejected. &#x60;null&#x60; when no ejection is scheduled, which is the usual case. | [optional] |
| **permissions** | [**ParticipantJoinedPayloadPermissions**](ParticipantJoinedPayloadPermissions.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::WaitingParticipantJoinedPayload.new(
  joined_at: null,
  duration: null,
  session_id: null,
  room: null,
  user_id: null,
  user_name: null,
  user_data: null,
  participant_type: null,
  owner: null,
  will_eject_at: null,
  permissions: null
)
```

