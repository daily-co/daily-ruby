# Daily::MeetingParticipantsGetRes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **data** | [**Array&lt;MeetingParticipantsGetResDataInner&gt;**](MeetingParticipantsGetResDataInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::MeetingParticipantsGetRes.new(
  total_count: 5,
  data: null
)
```

