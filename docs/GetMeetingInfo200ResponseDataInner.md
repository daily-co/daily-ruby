# Daily::GetMeetingInfo200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **room** | **String** |  |  |
| **start_time** | **Float** |  |  |
| **duration** | **Float** |  |  |
| **ongoing** | **Boolean** |  |  |
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
  participants: null
)
```

