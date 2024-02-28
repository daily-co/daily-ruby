# Daily::TranscriptionPropertiesRedact

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'daily-ruby'

Daily::TranscriptionPropertiesRedact.openapi_one_of
# =>
# [
#   :'Array<Boolean>',
#   :'Array<String>',
#   :'Boolean'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'daily-ruby'

Daily::TranscriptionPropertiesRedact.build(data)
# => #<Array<Boolean>:0x00007fdd4aab02a0>

Daily::TranscriptionPropertiesRedact.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<Boolean>`
- `Array<String>`
- `Boolean`
- `nil` (if no type matches)

