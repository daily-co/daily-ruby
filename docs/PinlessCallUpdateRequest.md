# Daily::PinlessCallUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** | CallId is represented by UUID and represents the sessionId in the SIP Network. | [optional] |
| **call_domain** | **String** | Call Domain is represented by UUID and represents your Daily Domain on the SIP Network. | [optional] |
| **sip_uri** | **String** | This SIP URI is associated to the Daily Room that you want to forward the SIP Interconnect call to. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::PinlessCallUpdateRequest.new(
  call_id: null,
  call_domain: null,
  sip_uri: null
)
```

