# Daily::RoomPropertiesSip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The display name shown for SIP participants when they join the room. |  |
| **sip_mode** | **String** | Must be &#x60;\&quot;dial-in\&quot;&#x60;. |  |
| **video** | **Boolean** | Whether to enable video for SIP dial-in participants. Defaults to &#x60;false&#x60; (audio-only). | [optional] |
| **num_endpoints** | **Integer** | Number of SIP endpoints to provision for this room, allowing multiple simultaneous SIP dial-in connections. | [optional] |
| **force_digit_only_username** | **Boolean** | If &#x60;true&#x60;, generates a numeric-only SIP username. Required for providers that only support digits in the SIP username. Incompatible with &#x60;num_endpoints &gt; 1&#x60;. | [optional] |
| **codecs** | [**RoomPropertiesSipCodecs**](RoomPropertiesSipCodecs.md) |  | [optional] |
| **provider** | **String** | SIP provider. Currently only &#x60;\&quot;daily\&quot;&#x60; is supported. | [optional] |
| **dialin_config** | [**RoomPropertiesSipDialinConfig**](RoomPropertiesSipDialinConfig.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesSip.new(
  display_name: null,
  sip_mode: null,
  video: null,
  num_endpoints: null,
  force_digit_only_username: null,
  codecs: null,
  provider: null,
  dialin_config: null
)
```

