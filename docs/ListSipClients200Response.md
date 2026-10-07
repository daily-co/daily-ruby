# Daily::ListSipClients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sip_clients** | [**Array&lt;ListSipClients200ResponseSipClientsInner&gt;**](ListSipClients200ResponseSipClientsInner.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListSipClients200Response.new(
  sip_clients: null,
  total: null,
  limit: null,
  offset: null
)
```

