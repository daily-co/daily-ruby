# Daily::ListLogs200ResponseLogsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Time** |  | [optional] |
| **client_time** | **Time** |  | [optional] |
| **message** | **String** |  | [optional] |
| **mtg_session_id** | **String** |  | [optional] |
| **user_session_id** | **String** |  | [optional] |
| **peer_id** | **String** |  | [optional] |
| **domain_name** | **String** |  | [optional] |
| **level** | **Integer** |  | [optional] |
| **code** | **Integer** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListLogs200ResponseLogsInner.new(
  time: null,
  client_time: null,
  message: null,
  mtg_session_id: null,
  user_session_id: null,
  peer_id: null,
  domain_name: null,
  level: null,
  code: null
)
```

