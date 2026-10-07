# Daily::DomainDialinConfigCreateReq

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of dial-in configuration to create. |  |
| **phone_number** | **String** | The phone number to configure for pinless_dialin or pin_dialin, in E.164 format (e.g. \&quot;+18058700061\&quot;). If the same number is used by any other config then the API will fail. Required for pinless_dialin, optional for pin_dialin. |  |
| **name_prefix** | **String** | friendly name for the configuration. | [optional] |
| **hmac** | **String** | The [HMAC signature](/guides/products/dial-in-dial-out/dialin-pinless#hmac) used to verify the webhook called to \&quot;room_creation_api\&quot;. (only for pinless_dialin type) | [optional] |
| **room_creation_api** | **String** | The API to request when a call is received on configured phoneNumber or sip_uri. (only for pinless_dialin type). flow is described [here](/guides/products/dial-in-dial-out/dialin-pinless#quick-overview) | [optional] |
| **hold_music_url** | **String** | The URL to the hold music to play when the call is received, (only for pinless_dialin type). The hold music must be a publicly accessible URL in MP3 format. The hold music must be less than 10MB in size and less than 60 seconds in duration. In pinless_dialin, the hold music will be played twice. | [optional] |
| **timeout_config** | [**DomainDialinConfigCreateReqTimeoutConfig**](DomainDialinConfigCreateReqTimeoutConfig.md) |  | [optional] |
| **ivr_greeting** | [**DomainDialinConfigCreateReqIvrGreeting**](DomainDialinConfigCreateReqIvrGreeting.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DomainDialinConfigCreateReq.new(
  type: null,
  phone_number: +12555599999,
  name_prefix: my-identifier-prefix,
  hmac: 9jyatvPWQfBymCGDOYPYKF/TRZXR+08Gj4bvPF78pH0&#x3D;,
  room_creation_api: https://mydomain.com/api/create-room,
  hold_music_url: https://mydomain.com/hold-music.mp3,
  timeout_config: null,
  ivr_greeting: null
)
```

