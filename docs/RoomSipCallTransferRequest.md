# Daily::RoomSipCallTransferRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** |  | [optional] |
| **to_end_point** | **String** | the SIP/phoneNumber endpoint to transfer the call to. | [optional] |
| **caller_id** | **String** | determine the phone number used for outbound call (i.e. phone number displayed on the called phone). [purchased phone](/products/rest-api/phone-numbers/purchased-phone-numbers) | [optional] |
| **wait_before_extension_dial_sec** | **Integer** | number of seconds to wait before dialing the extension, once dialed number is connected. | [optional] |
| **extension** | **String** | the extension to dial after dialed number is connected. e.g. &#x60;1234&#x60; | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomSipCallTransferRequest.new(
  session_id: null,
  to_end_point: null,
  caller_id: null,
  wait_before_extension_dial_sec: null,
  extension: 1234
)
```

