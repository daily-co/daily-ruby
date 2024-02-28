# Daily::ListRecordings200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **start_ts** | **Integer** |  | [optional][default to 0] |
| **status** | **String** |  | [optional] |
| **max_participants** | **Integer** |  | [optional][default to 0] |
| **share_token** | **String** |  | [optional] |
| **s3key** | **String** |  | [optional] |
| **mtg_session_id** | **String** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListRecordings200ResponseDataInner.new(
  id: bfd0c52b-3a2a-4269-80ce-cae9eef55536,
  start_ts: 1548790974,
  status: in-progress,
  max_participants: 2,
  share_token: NcWgEiJuqD8v,
  s3key: mydomain/test-recording-room/11245260397,
  mtg_session_id: 257764e6-c74e-4c30-944a-a887a03173a3
)
```

