# Daily::CreateSipTrunkRequestNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | **String** | HTTPS URL Daily POSTs sip_trunk.incoming to. Required. |  |
| **hmac** | **String** | Base64 secret for the X-Siptrunk-Signature header. Optional - Daily generates one if omitted. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipTrunkRequestNotification.new(
  webhook_url: null,
  hmac: null
)
```

