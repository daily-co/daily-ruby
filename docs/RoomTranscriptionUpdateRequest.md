# Daily::RoomTranscriptionUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_id** | **String** | instanceId to be updated. | [optional] |
| **participants** | **Array&lt;String&gt;** | A list of participant IDs to be transcribed. Only the participant IDs included in this array will be processed | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomTranscriptionUpdateRequest.new(
  instance_id: null,
  participants: null
)
```

