# Daily::CreateSipTrunk200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **trunk_name** | **String** |  | [optional] |
| **sip_uri** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **config** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipTrunk200Response.new(
  id: null,
  description: null,
  trunk_name: null,
  sip_uri: sip:examplecorp-support.siptrunk.sip-us.daily.co,
  enabled: null,
  config: null
)
```

