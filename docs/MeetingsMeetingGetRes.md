# Daily::MeetingsMeetingGetRes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **room** | **String** |  | [optional] |
| **start_time** | **Integer** |  | [optional] |
| **duration** | **Integer** |  | [optional] |
| **ongoing** | **Boolean** |  | [optional] |
| **max_participants** | **Integer** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingsMeetingGetRes.new(
  id: d61cd7b2-a273-42b4-89bd-be763fd562c1,
  room: room-name,
  start_time: 1672606399,
  duration: 2055,
  ongoing: false,
  max_participants: 4
)
```

