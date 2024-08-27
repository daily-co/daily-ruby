# Daily::BatchProcessorJobFinishedPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The batch processor job id. | [optional] |
| **preset** | **String** | The preset given when starting the job. | [optional] |
| **status** | **String** | The status of the job. | [optional] |
| **input** | [**BatchProcessorJobFinishedPayloadInput**](BatchProcessorJobFinishedPayloadInput.md) |  | [optional] |
| **output** | [**BatchProcessorJobFinishedPayloadOutput**](BatchProcessorJobFinishedPayloadOutput.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayload.new(
  id: null,
  preset: null,
  status: null,
  input: null,
  output: null
)
```

