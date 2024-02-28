# Daily::UpdatePermissionsRequestDataValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_presence** | **Boolean** |  | [optional] |
| **can_send** | [**UpdatePermissionsRequestDataValueCanSend**](UpdatePermissionsRequestDataValueCanSend.md) |  | [optional] |
| **can_admin** | [**UpdatePermissionsRequestDataValueCanSend**](UpdatePermissionsRequestDataValueCanSend.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::UpdatePermissionsRequestDataValue.new(
  has_presence: null,
  can_send: null,
  can_admin: null
)
```

