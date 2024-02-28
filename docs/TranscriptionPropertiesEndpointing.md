# Daily::TranscriptionPropertiesEndpointing

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'daily-ruby'

Daily::TranscriptionPropertiesEndpointing.openapi_one_of
# =>
# [
#   :'Boolean',
#   :'Float'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'daily-ruby'

Daily::TranscriptionPropertiesEndpointing.build(data)
# => #<Boolean:0x00007fdd4aab02a0>

Daily::TranscriptionPropertiesEndpointing.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Boolean`
- `Float`
- `nil` (if no type matches)

