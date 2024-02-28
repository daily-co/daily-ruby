# Daily::StreamingStartedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when streaming was started. | [optional] |
| **instance_id** | **String** | The streaming instance ID. | [optional] |
| **domain_id** | **String** | ID of the domain for which streaming was started. | [optional] |
| **layout** | [**DailyStreamingLayoutConfig**](.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::StreamingStartedPayload.new(
  timestamp: null,
  instance_id: null,
  domain_id: null,
  layout: null
)
```

