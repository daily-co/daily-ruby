# Daily::ListRecordings200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional][default to 0] |
| **data** | [**Array&lt;ListRecordings200ResponseDataInner&gt;**](ListRecordings200ResponseDataInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListRecordings200Response.new(
  total_count: 3,
  data: null
)
```

