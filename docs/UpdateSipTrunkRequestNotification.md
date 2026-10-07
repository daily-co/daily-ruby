# Daily::UpdateSipTrunkRequestNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | **String** |  | [optional] |
| **hmac** | **String** | A base64 value sets it; null rotates it (fresh secret); omit to keep the current one. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::UpdateSipTrunkRequestNotification.new(
  webhook_url: null,
  hmac: null
)
```

