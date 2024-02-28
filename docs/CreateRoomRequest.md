# Daily::CreateRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **privacy** | **String** |  | [optional] |
| **properties** | [**RoomProperties**](RoomProperties.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateRoomRequest.new(
  name: null,
  privacy: null,
  properties: null
)
```

