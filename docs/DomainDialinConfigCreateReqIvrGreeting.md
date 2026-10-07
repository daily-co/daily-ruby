# Daily::DomainDialinConfigCreateReqIvrGreeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The message to play when call first connects. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DomainDialinConfigCreateReqIvrGreeting.new(
  message: Please enter the dialin code for the meeting, it is in the meeting invite
)
```

