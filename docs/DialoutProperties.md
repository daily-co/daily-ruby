# Daily::DialoutProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sip_uri** | **String** | sipUri to call. uri should start with &#x60;sip:&#x60;. Query parameters appended to the sipUri will appear as SIP Headers in the INTIVE message at the remote SIP endpoint. Headers must start with \&quot;X-\&quot;, e.g. to append a header \&quot;myexampleHeader\&quot; it is appended to sipUri as \&quot;sip:&lt;dialout_sip_uri&gt;?X-header-1&#x3D;val-1&amp;X-header-2&#x3D;val-2\&quot;. | [optional] |
| **phone_number** | **String** | phone number to call. number must start with country code e.g &#x60;+1&#x60; | [optional] |
| **extension** | **String** | the extension to dial after dialed number is connected. e.g. &#x60;1234&#x60; | [optional] |
| **wait_before_extension_dial_sec** | **Integer** | number of seconds to wait before dialing the extension, once dialed number is connected. | [optional] |
| **display_name** | **String** | The sipUri or The phone participant is shown with this name in the web UI. | [optional] |
| **user_id** | **String** | userId to assign to the participant. default &#x60;userId&#x60; is null. | [optional] |
| **caller_id** | **String** | determine the phone number used for outbound call (i.e. phone number displayed on the called phone). [purchased phone](/products/rest-api/phone-numbers/purchased-phone-numbers) | [optional] |
| **video** | **Boolean** | Enable SIP video in the room, only available for sipUri. | [optional] |
| **video_settings** | [**DialoutPropertiesVideoSettings**](DialoutPropertiesVideoSettings.md) |  | [optional] |
| **codecs** | [**DialoutPropertiesCodecs**](DialoutPropertiesCodecs.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutProperties.new(
  sip_uri: null,
  phone_number: null,
  extension: null,
  wait_before_extension_dial_sec: null,
  display_name: null,
  user_id: null,
  caller_id: null,
  video: null,
  video_settings: null,
  codecs: null
)
```

