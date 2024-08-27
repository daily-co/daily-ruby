# Daily::BatchProcessorJobFinished

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The semantic version of the current message. | [optional] |
| **type** | **String** | The type of event that is being provided. | [optional] |
| **event_ts** | **Float** | The Unix epoch time in seconds representing when the event was generated. | [optional] |
| **payload** | [**BatchProcessorJobFinishedPayload**](BatchProcessorJobFinishedPayload.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinished.new(
  version: null,
  type: null,
  event_ts: null,
  payload: null
)
```

