# Daily::UpdateWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The webhook server endpoint that was provided. | [optional] |
| **basic_auth** | **String** | The basic auth credentials that will be used to POST to the webhook URL. | [optional] |
| **event_types** | **Array&lt;String&gt;** | The set of event types this webhook is subscribed to. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::UpdateWebhook.new(
  url: null,
  basic_auth: null,
  event_types: null
)
```

