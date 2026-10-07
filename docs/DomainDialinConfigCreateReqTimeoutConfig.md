# Daily::DomainDialinConfigCreateReqTimeoutConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | If room_creation_api does not respond within the timeout period, this message will be played to the caller. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DomainDialinConfigCreateReqTimeoutConfig.new(
  message: No Agents are available right now, please try again later
)
```

