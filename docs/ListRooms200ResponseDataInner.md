# Daily::ListRooms200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **api_created** | **Boolean** |  | [optional][default to true] |
| **privacy** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **config** | [**ListRooms200ResponseDataInnerConfig**](ListRooms200ResponseDataInnerConfig.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListRooms200ResponseDataInner.new(
  id: 5e3cf703-5547-47d6-a371-37b1f0b4427f,
  name: w2pp2cf4kltgFACPKXmX,
  api_created: false,
  privacy: public,
  url: https://api-demo.daily.co/w2pp2cf4kltgFACPKXmX,
  created_at: 2019-01-26T09:01:22.000Z,
  config: null
)
```

