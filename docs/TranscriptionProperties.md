# Daily::TranscriptionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | See Deepgram&#39;s documentation for [&#x60;language&#x60;](https://developers.deepgram.com/docs/language) | [optional] |
| **model** | **String** | See Deepgram&#39;s documentation for [&#x60;model&#x60;](https://developers.deepgram.com/docs/model) | [optional] |
| **tier** | **String** | See Deepgram&#39;s documentation for [&#x60;tier&#x60;](https://developers.deepgram.com/docs/tier) | [optional] |
| **profanity_filter** | **Boolean** | See Deepgram&#39;s documentation for [&#x60;profanity filter&#x60;](https://developers.deepgram.com/docs/profanity-filter) | [optional] |
| **punctuate** | **Boolean** | See Deepgram&#39;s documentation for [&#x60;punctuate&#x60;](https://developers.deepgram.com/docs/punctuation) | [optional] |
| **endpointing** | [**TranscriptionPropertiesEndpointing**](TranscriptionPropertiesEndpointing.md) |  | [optional] |
| **redact** | [**TranscriptionPropertiesRedact**](TranscriptionPropertiesRedact.md) |  | [optional] |
| **extra** | **Object** | Specify any Deepgram parameters. See Deepgram&#39;s documentation for [available streaming options](https://developers.deepgram.com/docs/features-overview) | [optional] |
| **include_raw_response** | **Boolean** | Whether Deepgram&#39;s raw response should be included in all transcription messages | [optional] |

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
  include_raw_response: null
)
```

