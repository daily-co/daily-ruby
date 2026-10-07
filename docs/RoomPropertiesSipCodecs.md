# Daily::RoomPropertiesSipCodecs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio** | **Array&lt;String&gt;** | Preferred audio codecs in priority order. | [optional] |
| **video** | **Array&lt;String&gt;** | Preferred video codecs in priority order. Only relevant when &#x60;video: true&#x60;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesSipCodecs.new(
  audio: null,
  video: null
)
```

