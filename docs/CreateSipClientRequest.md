# Daily::CreateSipClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | SIP username: letters, digits, &#39;-&#39; and &#39;_&#39; (a room name), optionally followed by .&lt;number&gt; (e.g. myroom.0). Up to 64 chars. Must be unique within your domain. |  |
| **password** | **String** | Optional. 12-64 chars with at least one letter and one digit. If omitted, a password is generated and returned once in the response. | [optional] |
| **expires_in_seconds** | **Integer** | Optional TTL in seconds (60-2592000). The client is removed automatically after it elapses. Omit for a long-lived client. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipClientRequest.new(
  username: myroom.0,
  password: null,
  expires_in_seconds: null
)
```

