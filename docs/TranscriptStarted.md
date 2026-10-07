# Daily::TranscriptStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The semantic version of the current message. | [optional] |
| **type** | **String** | The type of event that is being provided. | [optional] |
| **id** | **String** | The unique identifier for this webhook event. | [optional] |
| **event_ts** | **Float** | The Unix epoch time in seconds representing when the event was generated. | [optional] |
| **payload** | [**TranscriptStartedPayload**](TranscriptStartedPayload.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptStarted.new(
  version: null,
  type: null,
  id: null,
  event_ts: null,
  payload: null
)
```

