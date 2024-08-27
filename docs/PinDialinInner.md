# Daily::PinDialinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Associate a purchased phone number to the dialin with PIN workflow.   | [optional] |
| **name_prefix** | **String** | An identifier or name to associate to the workflow. | [optional] |
| **ivr_greeting** | [**PinDialinInnerIvrGreeting**](PinDialinInnerIvrGreeting.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::PinDialinInner.new(
  phone_number: null,
  name_prefix: null,
  ivr_greeting: null
)
```

