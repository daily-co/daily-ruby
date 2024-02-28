# Daily::RecordingsBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_name** | **String** | The name of the Amazon S3 bucket to use for recording storage. | [optional] |
| **bucket_region** | **String** | The region which the specified S3 bucket is located in. | [optional] |
| **assume_role_arn** | **String** | The Amazon Resource Name (ARN) of the role Daily should assume when storing the recording in the specified bucket. | [optional] |
| **allow_api_access** | **Boolean** | Controls whether the recording will be accessible using Daily&#39;s API. | [optional] |
| **allow_streaming_from_bucket** | **Boolean** | Specifies which [&#x60;Content-Disposition&#x60;](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition) response header the recording link retrieved from the [access-link](/reference/rest-api/recordings/get-recording-link) REST API endpoint will have. If &#x60;allow_streaming_from_bucket&#x60; is &#x60;false&#x60;, the header will be &#x60;Content-Dispostion: attachment&#x60;. If &#x60;allow_streaming_from_bucket&#x60; is &#x60;true&#x60;, the header will be &#x60;Content-Disposition: inline&#x60;. To play the recording link directly in the browser or embed it in a video player, set this property to &#x60;true&#x60;. | [optional][default to false] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingsBucket.new(
  bucket_name: my-daily-recording,
  bucket_region: ap-south-1,
  assume_role_arn: arn:aws:iam::555555555555:role/DailyS3AccessRole,
  allow_api_access: null,
  allow_streaming_from_bucket: null
)
```

