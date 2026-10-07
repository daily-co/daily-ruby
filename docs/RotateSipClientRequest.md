# Daily::RotateSipClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Optional. 12-64 chars with at least one letter and one digit. If omitted, a new password is generated. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RotateSipClientRequest.new(
  password: null
)
```

