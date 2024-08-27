# Daily::BatchProcessorErrorPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The batch processor job id. | [optional] |
| **preset** | **String** | The preset given when starting the job. | [optional] |
| **status** | **String** | The status of the job. | [optional] |
| **input** | [**BatchProcessorErrorPayloadInput**](BatchProcessorErrorPayloadInput.md) |  | [optional] |
| **error** | **String** | A description of the error that occurred. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorErrorPayload.new(
  id: null,
  preset: null,
  status: null,
  input: null,
  error: null
)
```

