# Daily::DialoutProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sip_uri** | **String** | sipUri to call. uri should start with &#x60;sip:&#x60;.  | [optional] |
| **phone_number** | **String** | phone number to call. number must start with country code e.g &#x60;+1&#x60; | [optional] |
| **display_name** | **String** | The sipUri or The phone participant is shown with this name in the web UI. | [optional] |
| **video** | **Boolean** | Enable SIP video in the room, only availble for sipUri. | [optional] |
| **codecs** | [**DialoutPropertiesCodecs**](DialoutPropertiesCodecs.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutProperties.new(
  sip_uri: null,
  phone_number: null,
  display_name: null,
  video: null,
  codecs: null
)
```

