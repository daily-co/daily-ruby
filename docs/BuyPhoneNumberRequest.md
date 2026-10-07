# Daily::BuyPhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The phone number to purchase, in E.164 format (e.g. \&quot;+18058700061\&quot;). If not provided, a random US number will be purchased. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BuyPhoneNumberRequest.new(
  number: +18058700061
)
```

