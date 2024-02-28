# Daily::SetSessionDataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | A javascript object that can be serialized into JSON. Defaults to &#x60;{}&#x60;. | [optional] |
| **merge_strategy** | **String** | &#x60;replace&#x60; to replace the existing meeting session data object or &#x60;shallow-merge&#x60; to merge with it. | [optional][default to &#39;replace&#39;] |
| **keys_to_delete** | **Array&lt;String&gt;** | Optional list of keys to delete from the existing meeting session data object when using &#x60;shallow-merge&#x60;. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::SetSessionDataRequest.new(
  data: null,
  merge_strategy: null,
  keys_to_delete: null
)
```

