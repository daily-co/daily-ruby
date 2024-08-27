# Daily::EjectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | List of participant ids (max 100) to eject from the existing meeting session. | [optional] |
| **user_ids** | **Array&lt;String&gt;** | List of user_ids (max 100) to eject from the existing meeting session. | [optional] |
| **ban** | **Boolean** | If true, participants are prevented from (re)joining with the given user_ids. | [optional][default to false] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::EjectRequest.new(
  ids: null,
  user_ids: null,
  ban: null
)
```

