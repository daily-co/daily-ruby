# Daily::ListTranscript200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional][default to 0] |
| **data** | [**Array&lt;ListTranscript200ResponseDataInner&gt;**](ListTranscript200ResponseDataInner.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListTranscript200Response.new(
  total_count: 3,
  data: null
)
```

