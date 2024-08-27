# Daily::GetDomainConfig200ResponseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hide_daily_branding** | **Boolean** |  | [optional] |
| **redirect_on_meeting_exit** | **String** |  | [optional] |
| **meeting_join_hook** | **String** |  | [optional] |
| **hipaa** | **Boolean** |  | [optional] |
| **intercom_auto_record** | **Boolean** |  | [optional] |
| **intercom_manual_record** | **String** |  | [optional] |
| **sfu_impl** | **String** |  | [optional] |
| **sfu_switchover** | **Integer** |  | [optional] |
| **switchover_impl** | **String** |  | [optional] |
| **lang** | **String** |  | [optional] |
| **webhook_meeting_end** | **String** |  | [optional] |
| **recordings_bucket** | [**GetDomainConfig200ResponseConfigRecordingsBucket**](GetDomainConfig200ResponseConfigRecordingsBucket.md) |  | [optional] |
| **max_live_streams** | **Float** |  | [optional] |
| **max_streaming_instances_per_room** | **Float** |  | [optional] |
| **enable_daily_logger** | **Boolean** |  | [optional] |
| **enable_prejoin_ui** | **Boolean** |  | [optional] |
| **enable_live_captions_ui** | **Boolean** |  | [optional] |
| **enable_network_ui** | **Boolean** |  | [optional] |
| **disable_rate_limiting** | **Boolean** |  | [optional] |
| **attach_callobject_to_window** | **Boolean** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetDomainConfig200ResponseConfig.new(
  hide_daily_branding: null,
  redirect_on_meeting_exit: null,
  meeting_join_hook: null,
  hipaa: null,
  intercom_auto_record: null,
  intercom_manual_record: null,
  sfu_impl: null,
  sfu_switchover: null,
  switchover_impl: null,
  lang: null,
  webhook_meeting_end: null,
  recordings_bucket: null,
  max_live_streams: null,
  max_streaming_instances_per_room: null,
  enable_daily_logger: null,
  enable_prejoin_ui: null,
  enable_live_captions_ui: null,
  enable_network_ui: null,
  disable_rate_limiting: null,
  attach_callobject_to_window: null
)
```

