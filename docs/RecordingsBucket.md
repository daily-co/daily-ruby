# Daily::RecordingsBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_provider** | **String** | Which storage provider the bucket belongs to. Defaults to &#x60;aws&#x60; when omitted, so existing configurations are unaffected. Set to &#x60;oci&#x60; to store recordings in an Oracle Cloud Infrastructure Object Storage bucket — see the [custom OCI storage guide](/docs/guides/features/recording/custom-oci-storage). OCI buckets are not self-serve: Daily must provision credentials for your domain first. | [optional] |
| **bucket_name** | **String** | The name of the Amazon S3 bucket to use for recording storage. | [optional] |
| **bucket_region** | **String** | The region which the specified S3 bucket is located in. When &#x60;storage_provider&#x60; is &#x60;oci&#x60; this must be an OCI region such as &#x60;us-ashburn-1&#x60;, not an AWS region. | [optional] |
| **namespace** | **String** | **OCI only.** Your OCI Object Storage namespace. Required when &#x60;storage_provider&#x60; is &#x60;oci&#x60;, and rejected when it is &#x60;aws&#x60;. Find it in the OCI Console under Tenancy details. | [optional] |
| **assume_role_arn** | **String** | **AWS only.** The Amazon Resource Name (ARN) of the role Daily should assume when storing the recording in the specified bucket. Required when &#x60;storage_provider&#x60; is &#x60;aws&#x60;, and rejected when it is &#x60;oci&#x60;. | [optional] |
| **allow_api_access** | **Boolean** | Controls whether the recording will be accessible using Daily&#39;s API. | [optional] |
| **allow_streaming_from_bucket** | **Boolean** | Specifies which [&#x60;Content-Disposition&#x60;](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition) response header the recording link retrieved from the [access-link](/products/rest-api/recordings/get-recording-link) REST API endpoint will have. If &#x60;allow_streaming_from_bucket&#x60; is &#x60;false&#x60;, the header will be &#x60;Content-Dispostion: attachment&#x60;. If &#x60;allow_streaming_from_bucket&#x60; is &#x60;true&#x60;, the header will be &#x60;Content-Disposition: inline&#x60;. To play the recording link directly in the browser or embed it in a video player, set this property to &#x60;true&#x60;. Defaults to &#x60;false&#x60; | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RecordingsBucket.new(
  storage_provider: aws,
  bucket_name: my-daily-recording,
  bucket_region: ap-south-1,
  namespace: axaxnpcrorw5,
  assume_role_arn: arn:aws:iam::555555555555:role/DailyS3AccessRole,
  allow_api_access: null,
  allow_streaming_from_bucket: null
)
```

