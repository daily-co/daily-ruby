# Daily::PinlessDialinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Associate a purchased phone number to the Pinless dialin workflow. | [optional] |
| **room_creation_api** | **String** | The webhook URL to trigger when an incoming call arrives. Typically, you will need to spin-up a Daily meeting room and patch the incoming call to the room. Read more in the [pinless/sip interconnect guide](/guides/products/dial-in-dial-out/dialin-pinless#incoming-call-triggers-the-webhook). | [optional] |
| **name_prefix** | **String** | An identifier or name to associate to the workflow. | [optional] |
| **sip_uri** | **String** | This is not a settable value, Daily returns the &#x60;sip_uri&#x60; in cases where you want to directly send the call to the SIP URI instead of the phone_number. If you dial in to the &#x60;phone_number&#x60; or this &#x60;sip_uri&#x60;, the [webhook will be triggered](/guides/products/dial-in-dial-out/dialin-pinless#incoming-call-triggers-the-webhook).     | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::PinlessDialinInner.new(
  phone_number: null,
  room_creation_api: null,
  name_prefix: null,
  sip_uri: null
)
```

