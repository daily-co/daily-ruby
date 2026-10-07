# Daily::GetPresence200ResponseValueInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room** | **String** | The room name. | [optional] |
| **id** | **String** | Unique participant session ID. | [optional] |
| **user_id** | **String** | The user ID if set on the meeting token, otherwise null. | [optional] |
| **user_name** | **String** | Display name of the participant. | [optional] |
| **mtg_session_id** | **String** | The meeting session ID. | [optional] |
| **join_time** | **Time** | ISO 8601 timestamp of when this participant joined. | [optional] |
| **duration** | **Integer** | How long this participant has been in the meeting, in seconds. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetPresence200ResponseValueInner.new(
  room: null,
  id: null,
  user_id: null,
  user_name: null,
  mtg_session_id: null,
  join_time: null,
  duration: null
)
```

