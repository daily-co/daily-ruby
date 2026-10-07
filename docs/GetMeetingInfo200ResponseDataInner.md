# Daily::GetMeetingInfo200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique meeting session ID. | [optional] |
| **room** | **String** | The room name the meeting took place in. | [optional] |
| **start_time** | **Integer** | Unix timestamp of when the meeting started. | [optional] |
| **duration** | **Integer** | Duration of the meeting in seconds. | [optional] |
| **ongoing** | **Boolean** | Whether the meeting is currently in progress. | [optional] |
| **max_participants** | **Integer** | Peak number of simultaneous participants during the meeting. | [optional] |
| **participants** | [**Array&lt;GetMeetingInfo200ResponseDataInnerParticipantsInner&gt;**](GetMeetingInfo200ResponseDataInnerParticipantsInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetMeetingInfo200ResponseDataInner.new(
  id: null,
  room: null,
  start_time: null,
  duration: null,
  ongoing: null,
  max_participants: null,
  participants: null
)
```

