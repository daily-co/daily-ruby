# Daily::StreamingErrorPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | The Unix epoch time in seconds representing when streaming error occurred. | [optional] |
| **instance_id** | **String** | The streaming instance ID. | [optional] |
| **error_message** | **String** | The error message returned. | [optional] |
| **room_name** | **String** | The name of the room where streaming error occurred. | [optional] |
| **domain_id** | **String** | ID of the domain for which streaming error occurred. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::StreamingErrorPayload.new(
  timestamp: null,
  instance_id: null,
  error_message: null,
  room_name: null,
  domain_id: null
)
```

