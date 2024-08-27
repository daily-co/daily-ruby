# Daily::PostWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The webhook server endpoint that was provided. | [optional] |
| **basic_auth** | **String** | The basic auth credentials that will be used to POST to the webhook URL. | [optional] |
| **retry_type** | **String** | The retry configuration for this webhook endpoint to use. The default is circuit-breaker. | [optional] |
| **event_types** | **Array&lt;String&gt;** | The set of event types this webhook is subscribed to. | [optional] |
| **hmac** | **String** | A secret that can be used to verify the signature of the webhook. If not provided, an hmac will be provisioned for you and returned. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::PostWebhook.new(
  url: null,
  basic_auth: null,
  retry_type: null,
  event_types: null,
  hmac: null
)
```

