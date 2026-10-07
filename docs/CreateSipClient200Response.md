# Daily::CreateSipClient200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **sip_uri** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipClient200Response.new(
  username: null,
  domain: examplecorp.sip-us.daily.co,
  sip_uri: sip:myroom.0@examplecorp.sip-us.daily.co,
  password: null,
  expires_at: null
)
```

