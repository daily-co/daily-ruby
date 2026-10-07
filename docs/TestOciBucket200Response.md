# Daily::TestOciBucket200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **recordings_bucket** | [**RecordingsBucket**](RecordingsBucket.md) | The configuration that was tested. Returned **only** when &#x60;property&#x60; is &#x60;recordings_bucket&#x60; (the default). Exactly one of &#x60;recordings_bucket&#x60; or &#x60;transcription_bucket&#x60; is present in a response, never both. | [optional] |
| **transcription_bucket** | [**TranscriptionBucket**](TranscriptionBucket.md) | The configuration that was tested. Returned **only** when &#x60;property&#x60; is &#x60;transcription_bucket&#x60;. Exactly one of &#x60;recordings_bucket&#x60; or &#x60;transcription_bucket&#x60; is present in a response, never both. | [optional] |
| **test_file_key** | **String** | The object key of the test file written to your bucket. | [optional] |
| **download_link** | **String** | A presigned link to the test file, valid for one hour. Only a real link when &#x60;allow_api_access&#x60; is &#x60;true&#x60;; otherwise a short string explaining that no link was generated. | [optional] |
| **expires** | **Integer** | When &#x60;download_link&#x60; expires, as a unix timestamp. Returned only when &#x60;allow_api_access&#x60; is &#x60;true&#x60;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TestOciBucket200Response.new(
  success: true,
  recordings_bucket: null,
  transcription_bucket: null,
  test_file_key: daily-co-test-upload.txt,
  download_link: https://axaxnpcrorw5.compat.objectstorage.us-ashburn-1.oraclecloud.com/my-daily-recordings/daily-co-test-upload.txt?...,
  expires: 1787234330
)
```

