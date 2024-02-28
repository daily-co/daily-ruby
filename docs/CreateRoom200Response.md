# Daily::CreateRoom200Response

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

instance = Daily::CreateRoom200Response.new(
  id: d61cd7b2-a273-42b4-89bd-be763fd562c1,
  name: w2pp2cf4kltgFACPKXmX,
  api_created: true,
  privacy: public,
  url: https://api-demo.daily.co/w2pp2cf4kltgFACPKXmX,
  created_at: 2019-01-26T09:01:22.000Z,
  config: null
)
```

