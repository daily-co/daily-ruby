# Daily::SendAppMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | A javascript object that can be serialized into JSON. Data sent must be within the 4kb size limit. | [optional] |
| **recipient** | **String** | Determines who will recieve the message. It can be either a participant session_id, or &#x60;*&#x60;. The &#x60;*&#x60; value is the default, and means that the message is a \&quot;broadcast\&quot; message intended for all participants. | [optional][default to &#39;*&#39;] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::SendAppMessageRequest.new(
  data: null,
  recipient: null
)
```

