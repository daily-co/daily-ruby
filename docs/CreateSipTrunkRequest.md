# Daily::CreateSipTrunkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trunk_name** | **String** | Lowercase alphanumeric, 3-63 chars, no hyphens; the combined &#x60;&lt;domain&gt;-&lt;trunk_name&gt;&#x60; label must be &lt;&#x3D; 63 chars. Immutable after create. |  |
| **description** | **String** | Free text (max 2048). Echoed to your webhook as trunk.description. | [optional] |
| **room_template** | **Hash&lt;String, Object&gt;** | Room-creation properties, passed to room create. An optional &#x60;sip&#x60; block (applied at dial-in start) may set display name, codecs, dialin_config, etc. Absolute &#x60;exp&#x60;/&#x60;nbf&#x60; are rejected - use trunk_config.exp_offset. |  |
| **notification** | [**CreateSipTrunkRequestNotification**](CreateSipTrunkRequestNotification.md) |  |  |
| **trunk_config** | [**CreateSipTrunkRequestTrunkConfig**](CreateSipTrunkRequestTrunkConfig.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipTrunkRequest.new(
  trunk_name: support,
  description: null,
  room_template: null,
  notification: null,
  trunk_config: null,
  enabled: null
)
```

