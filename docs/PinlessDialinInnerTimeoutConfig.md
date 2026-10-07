# Daily::PinlessDialinInnerTimeoutConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | message to say if room could not be created within timeout of the hold_music. default message is \&quot;there are no available agents to service your call\&quot;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::PinlessDialinInnerTimeoutConfig.new(
  message: null
)
```

