# Daily::UpdateSipTrunkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **room_template** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **notification** | [**UpdateSipTrunkRequestNotification**](UpdateSipTrunkRequestNotification.md) |  | [optional] |
| **trunk_config** | [**UpdateSipTrunkRequestTrunkConfig**](UpdateSipTrunkRequestTrunkConfig.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::UpdateSipTrunkRequest.new(
  description: null,
  room_template: null,
  notification: null,
  trunk_config: null,
  enabled: null
)
```

