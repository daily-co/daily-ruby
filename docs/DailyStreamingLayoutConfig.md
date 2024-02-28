# Daily::DailyStreamingLayoutConfig

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'daily-ruby'

Daily::DailyStreamingLayoutConfig.openapi_one_of
# =>
# [
#   :'DailyStreamingActiveParticipantLayoutConfig',
#   :'DailyStreamingCustomLayoutConfig',
#   :'DailyStreamingDefaultLayoutConfig',
#   :'DailyStreamingPortraitLayoutConfig',
#   :'DailyStreamingSingleParticipantLayoutConfig'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'daily-ruby'

Daily::DailyStreamingLayoutConfig.openapi_discriminator_name
# => :'preset'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'daily-ruby'

Daily::DailyStreamingLayoutConfig.build(data)
# => #<DailyStreamingActiveParticipantLayoutConfig:0x00007fdd4aab02a0>

Daily::DailyStreamingLayoutConfig.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DailyStreamingActiveParticipantLayoutConfig`
- `DailyStreamingCustomLayoutConfig`
- `DailyStreamingDefaultLayoutConfig`
- `DailyStreamingPortraitLayoutConfig`
- `DailyStreamingSingleParticipantLayoutConfig`
- `nil` (if no type matches)

