# Daily::GetTranscriptLink200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** | A unique, opaque ID for this object. You can use this ID in API calls, and in paginated list operations. | [optional] |
| **link** | **String** |  | [optional] |
| **out_params** | [**GetTranscriptInfo200ResponseOutParams**](GetTranscriptInfo200ResponseOutParams.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetTranscriptLink200Response.new(
  transcript_id: 0cb313e1-211f-4be0-833d-8c7305b19902,
  link: https://daily-meeting-transcripts.s3.us-west-2.amazonaws.com/api-demo/hello/1548790973821?AWSAccessKeyId&#x3D;AKIAJVYA3B2F4672K3RQ&amp;Expires&#x3D;1548809176&amp;Signature&#x3D;xfSPW1kXksNriqmlm%2FT9hb%2Fq%2Bas%3D&amp;response-content-disposition&#x3D;attachment%3B%20filename%3D%22api-demo%2Fhello%2F1548790973821.webm%22,
  out_params: null
)
```

