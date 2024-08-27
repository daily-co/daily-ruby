# Daily::BatchProcessorErrorPayloadInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_type** | **String** | The source type describing the input of the job. | [optional] |
| **uri** | **String** | If the &#x60;sourceType&#x60; is &#x60;uri&#x60; or &#x60;transcriptUri&#x60;, this field represents the uri to access the content (transcript, video or audio file). | [optional] |
| **recording_id** | **String** | If the &#x60;sourceType&#x60; is &#x60;recordingId&#x60;, this field will be present containing the recording ID provided. | [optional] |
| **language** | **String** | If the &#x60;sourceType&#x60; is &#x60;uri&#x60;, this field represents the BCP-47 language of the transcript. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::BatchProcessorErrorPayloadInput.new(
  source_type: null,
  uri: null,
  recording_id: null,
  language: null
)
```

