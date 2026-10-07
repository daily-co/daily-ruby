# Daily::GetTranscriptLink200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcript_id** | **String** | A unique, opaque ID for this object. You can use this ID in API calls, and in paginated list operations. | [optional] |
| **link** | **String** | A short-lived signed download URL that must be used exactly as returned. See the [access links guide](/docs/rest-api/access-links) for more information. | [optional] |
| **out_params** | [**GetTranscriptInfo200ResponseOutParams**](GetTranscriptInfo200ResponseOutParams.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetTranscriptLink200Response.new(
  transcript_id: 0cb313e1-211f-4be0-833d-8c7305b19902,
  link: https://b.daily.co/transcripts/api-demo/hello/1548790973821?dl&#x3D;api-demo%2Fhello%2F1548790973821.vtt&amp;Expires&#x3D;1548809176&amp;Signature&#x3D;Gt5RhZ0kXksNriqmlm~T9hbq-asExampleSignature_&amp;Key-Pair-Id&#x3D;K1EXAMPLEKEYPAIR,
  out_params: null
)
```

