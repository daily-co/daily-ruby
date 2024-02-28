# Daily::GetRecordingLink200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **download_link** | **String** |  | [optional] |
| **expires** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetRecordingLink200Response.new(
  download_link: https://daily-meeting-recordings.s3.us-west-2.amazonaws.com/api-demo/hello/1548790973821?AWSAccessKeyId&#x3D;AKIAJVYA3B2F4672K3RQ&amp;Expires&#x3D;1548809176&amp;Signature&#x3D;xfSPW1kXksNriqmlm%2FT9hb%2Fq%2Bas%3D&amp;response-content-disposition&#x3D;attachment%3B%20filename%3D%22api-demo%2Fhello%2F1548790973821.webm%22,
  expires: 1548809176
)
```

