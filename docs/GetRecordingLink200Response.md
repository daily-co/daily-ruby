# Daily::GetRecordingLink200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **download_link** | **String** | A short-lived signed download URL that must be used exactly as returned. See the [access links guide](/docs/rest-api/access-links) for more information. | [optional] |
| **expires** | **Integer** |  | [optional] |
| **storage_provider** | **String** | The storage provider the recording was written to. &#x60;aws&#x60; for Amazon S3 (including Daily&#39;s own storage), &#x60;oci&#x60; for OCI Object Storage. | [optional] |
| **validity_capped** | **Boolean** | Present and &#x60;true&#x60; only when the requested &#x60;valid_for_secs&#x60; exceeded the maximum lifetime allowed for where this recording is stored, and the link was signed for the shorter lifetime instead. Absent otherwise. &#x60;expires&#x60; always reports the lifetime actually granted, so a client that reads &#x60;expires&#x60; needs no special handling for this case. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetRecordingLink200Response.new(
  download_link: https://b.daily.co/recordings/api-demo/hello/1548790973821?dl&#x3D;api-demo%2Fhello%2F1548790973821.webm&amp;Expires&#x3D;1548809176&amp;Signature&#x3D;Gt5RhZ0kXksNriqmlm~T9hbq-asExampleSignature_&amp;Key-Pair-Id&#x3D;K1EXAMPLEKEYPAIR,
  expires: 1548809176,
  storage_provider: aws,
  validity_capped: true
)
```

