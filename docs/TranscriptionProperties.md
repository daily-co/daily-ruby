# Daily::TranscriptionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | See Deepgram&#39;s documentation for [&#x60;language&#x60;](https://developers.deepgram.com/docs/language) | [optional] |
| **model** | **String** | See Deepgram&#39;s documentation for [&#x60;model&#x60;](https://developers.deepgram.com/docs/model) | [optional] |
| **tier** | **String** | This field is deprecated, use &#x60;model&#x60; instead | [optional] |
| **profanity_filter** | **Boolean** | See Deepgram&#39;s documentation for [&#x60;profanity filter&#x60;](https://developers.deepgram.com/docs/profanity-filter) | [optional] |
| **punctuate** | **Boolean** | See Deepgram&#39;s documentation for [&#x60;punctuate&#x60;](https://developers.deepgram.com/docs/punctuation) | [optional] |
| **endpointing** | [**TranscriptionPropertiesEndpointing**](TranscriptionPropertiesEndpointing.md) |  | [optional] |
| **redact** | [**TranscriptionPropertiesRedact**](TranscriptionPropertiesRedact.md) |  | [optional] |
| **extra** | **Object** | Specify any Deepgram parameters. See Deepgram&#39;s documentation for [available streaming options](https://developers.deepgram.com/docs/features-overview) | [optional] |
| **include_raw_response** | **Boolean** | Whether Deepgram&#39;s raw response should be included in all transcription messages | [optional] |
| **instance_id** | **String** | A developer provided ID of an instance, which is used for multi-instance transcription. | [optional] |
| **participants** | **Array&lt;String&gt;** | A list of participant IDs to be transcribed. Only the participant IDs included in this array will be processed. | [optional] |
| **transcription_geo** | **String** | The geographic region where transcription is processed. Set to &#x60;eu&#x60; to ensure transcription data stays within the European Union. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptionProperties.new(
  language: null,
  model: null,
  tier: null,
  profanity_filter: null,
  punctuate: null,
  endpointing: null,
  redact: null,
  extra: null,
  include_raw_response: null,
  instance_id: null,
  participants: null,
  transcription_geo: null
)
```

