# Daily::CreateSipTrunkRequestTrunkConfigCredential

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  | [optional] |
| **password** | **String** | Write-only (never returned by GET). 12-64 chars, at least one letter and one digit. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipTrunkRequestTrunkConfigCredential.new(
  username: null,
  password: null
)
```

