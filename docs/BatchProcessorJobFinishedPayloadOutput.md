# Daily::BatchProcessorJobFinishedPayloadOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **soap** | [**BatchProcessorJobFinishedPayloadOutputSoap**](BatchProcessorJobFinishedPayloadOutputSoap.md) |  | [optional] |
| **concept** | [**BatchProcessorJobFinishedPayloadOutputConcept**](BatchProcessorJobFinishedPayloadOutputConcept.md) |  | [optional] |
| **summary** | [**BatchProcessorJobFinishedPayloadOutputSummary**](BatchProcessorJobFinishedPayloadOutputSummary.md) |  | [optional] |
| **transcription** | [**Array&lt;BatchProcessorJobFinishedPayloadOutputTranscriptionInner&gt;**](BatchProcessorJobFinishedPayloadOutputTranscriptionInner.md) | If this job generated transcriptions output, this field will be defined. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorJobFinishedPayloadOutput.new(
  soap: null,
  concept: null,
  summary: null,
  transcription: null
)
```

