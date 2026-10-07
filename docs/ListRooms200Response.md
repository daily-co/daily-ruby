# Daily::ListRooms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **data** | [**Array&lt;ListRooms200ResponseDataInner&gt;**](ListRooms200ResponseDataInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListRooms200Response.new(
  total_count: 2,
  data: null
)
```

