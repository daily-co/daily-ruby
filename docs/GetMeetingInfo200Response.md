# Daily::GetMeetingInfo200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | Total number of meetings matching the query. | [optional] |
| **data** | [**Array&lt;GetMeetingInfo200ResponseDataInner&gt;**](GetMeetingInfo200ResponseDataInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetMeetingInfo200Response.new(
  total_count: null,
  data: null
)
```

