# Daily::RoomConfigSipUri

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint** | **String** | The primary SIP URI for this room (e.g. &#x60;my-room.0@daily-abc123.sip.signalwire.com&#x60;). | [optional] |
| **extra_endpoints** | **Array&lt;String&gt;** | Additional SIP URIs when &#x60;num_endpoints &gt; 1&#x60;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomConfigSipUri.new(
  endpoint: null,
  extra_endpoints: null
)
```

