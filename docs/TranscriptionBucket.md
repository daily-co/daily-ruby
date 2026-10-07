# Daily::TranscriptionBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_provider** | **String** | Which storage provider the bucket belongs to. Defaults to &#x60;aws&#x60; when omitted, so existing configurations are unaffected. Set to &#x60;oci&#x60; to store transcriptions in an Oracle Cloud Infrastructure Object Storage bucket — see the [custom OCI storage guide](/docs/guides/features/recording/custom-oci-storage). OCI buckets are not self-serve: Daily must provision credentials for your domain first. | [optional] |
| **bucket_name** | **String** | The name of the Amazon S3 bucket to use for transcription storage. | [optional] |
| **bucket_region** | **String** | The region which the specified S3 bucket is located in. When &#x60;storage_provider&#x60; is &#x60;oci&#x60; this must be an OCI region such as &#x60;us-ashburn-1&#x60;, not an AWS region. | [optional] |
| **namespace** | **String** | **OCI only.** Your OCI Object Storage namespace. Required when &#x60;storage_provider&#x60; is &#x60;oci&#x60;, and rejected when it is &#x60;aws&#x60;. Find it in the OCI Console under Tenancy details. | [optional] |
| **assume_role_arn** | **String** | **AWS only.** The Amazon Resource Name (ARN) of the role Daily should assume when storing the transcription in the specified bucket. Required when &#x60;storage_provider&#x60; is &#x60;aws&#x60;, and rejected when it is &#x60;oci&#x60;. | [optional] |
| **allow_api_access** | **Boolean** | Whether the transcription should be accessible using Daily&#39;s API. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::TranscriptionBucket.new(
  storage_provider: aws,
  bucket_name: my-daily-recording,
  bucket_region: ap-south-1,
  namespace: axaxnpcrorw5,
  assume_role_arn: arn:aws:iam::555555555555:role/DailyS3AccessRole,
  allow_api_access: null
)
```

