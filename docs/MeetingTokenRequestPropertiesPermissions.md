# Daily::MeetingTokenRequestPropertiesPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_presence** | **Boolean** |  | [optional] |
| **can_send** | [**MeetingTokenRequestPropertiesPermissionsCanSend**](MeetingTokenRequestPropertiesPermissionsCanSend.md) |  | [optional] |
| **can_admin** | [**MeetingTokenRequestPropertiesPermissionsCanAdmin**](MeetingTokenRequestPropertiesPermissionsCanAdmin.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingTokenRequestPropertiesPermissions.new(
  has_presence: null,
  can_send: null,
  can_admin: null
)
```

