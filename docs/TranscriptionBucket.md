# Daily::TranscriptionBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_name** | **String** | The name of the Amazon S3 bucket to use for transcription storage. | [optional] |
| **bucket_region** | **String** | The region which the specified S3 bucket is located in. | [optional] |
| **assume_role_arn** | **String** | The Amazon Resource Name (ARN) of the role Daily should assume when storing the transcription in the specified bucket. | [optional] |
| **allow_api_access** | **Boolean** | Whether the transcription should be accessible using Daily&#39;s API. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptionBucket.new(
  bucket_name: my-daily-recording,
  bucket_region: ap-south-1,
  assume_role_arn: arn:aws:iam::555555555555:role/DailyS3AccessRole,
  allow_api_access: null
)
```

