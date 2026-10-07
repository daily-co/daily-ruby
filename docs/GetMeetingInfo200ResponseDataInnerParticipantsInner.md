# Daily::GetMeetingInfo200ResponseDataInnerParticipantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID if set on the meeting token, otherwise null. | [optional] |
| **participant_id** | **String** | Unique participant session ID. | [optional] |
| **user_name** | **String** | Display name of the participant. | [optional] |
| **join_time** | **Integer** | Unix timestamp of when this participant joined. | [optional] |
| **duration** | **Integer** | How long this participant was in the meeting, in seconds. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetMeetingInfo200ResponseDataInnerParticipantsInner.new(
  user_id: null,
  participant_id: null,
  user_name: null,
  join_time: null,
  duration: null
)
```

