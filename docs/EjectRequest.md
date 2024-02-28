# Daily::EjectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | Required list of participant ids (max 100) to eject from the existing meeting session. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::EjectRequest.new(
  ids: null
)
```

