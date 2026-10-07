# Daily::ListDomainDialinConfigs200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique, opaque ID for this object. You can use this ID in API calls, and in paginated list operations. | [optional] |
| **type** | **String** | describe the type of configuration. It can be pinless_dialin or pin_dialin. | [optional] |
| **config** | [**DomainDialinConfigCreateReq**](DomainDialinConfigCreateReq.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListDomainDialinConfigs200ResponseDataInner.new(
  id: 0cb313e1-211f-4be0-833d-8c7305b19902,
  type: pinless_dialin,
  config: null
)
```

