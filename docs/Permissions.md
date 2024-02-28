# Daily::Permissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_presence** | **Boolean** | Whether the participant appears as \&quot;present\&quot; in the call, i.e. whether they appear in [&#x60;participants()&#x60;](/reference/daily-js/instance-methods/participants#main). | [optional] |
| **can_send** | [**PermissionsCanSend**](PermissionsCanSend.md) |  | [optional] |
| **can_admin** | [**PermissionsCanAdmin**](PermissionsCanAdmin.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::Permissions.new(
  has_presence: null,
  can_send: null,
  can_admin: null
)
```

