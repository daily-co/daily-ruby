# Daily::RoomsRoomNamePresenceGetResDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **room** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **mtg_session_id** | **String** |  | [optional] |
| **join_time** | **String** |  | [optional] |
| **duration** | **Integer** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomsRoomNamePresenceGetResDataInner.new(
  id: d61cd7b2-a273-42b4-89bd-be763fd562c1,
  room: w2pp2cf4kltgFACPKXmX,
  user_id: pbZ+ismP7dk&#x3D;,
  user_name: Moishe,
  mtg_session_id: 16e9701a-93e0-4933-83c9-223e7c40d552,
  join_time: 2023-01-01T20:53:19.000Z,
  duration: 2312
)
```

