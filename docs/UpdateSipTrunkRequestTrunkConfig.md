# Daily::UpdateSipTrunkRequestTrunkConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_ips** | **Array&lt;String&gt;** |  | [optional] |
| **credential** | [**UpdateSipTrunkRequestTrunkConfigCredential**](UpdateSipTrunkRequestTrunkConfigCredential.md) |  | [optional] |
| **is_open** | **Boolean** |  | [optional] |
| **exp_offset** | **Integer** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::UpdateSipTrunkRequestTrunkConfig.new(
  allowed_ips: null,
  credential: null,
  is_open: null,
  exp_offset: null
)
```

