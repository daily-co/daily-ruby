# Daily::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The unique identifier for this webhook. | [optional] |
| **url** | **String** | The webhook server endpoint that was provided. | [optional] |
| **hmac** | **String** | A secret that can be used to verify the signature of the webhook. | [optional] |
| **basic_auth** | **String** | The basic auth credentials that will be used to POST to the webhook URL. | [optional] |
| **retry_type** | **String** | The retry configuration for this webhook endpoint to use. The default is circuit-breaker. | [optional] |
| **event_types** | **Array&lt;String&gt;** | The set of event types this webhook is subscribed to. | [optional] |
| **state** | **String** | The current state of the webhook. \&quot;FAILED\&quot; | \&quot;INACTIVE\&quot; | [optional] |
| **failed_count** | **Float** | The number of consecutive failures this webhook has made. | [optional] |
| **last_moment_pushed** | **String** | The ISO 8601 time of the last moment an event was pushed to the webhook server. | [optional] |
| **domain_id** | **String** | The domain ID this webhook is associated with. | [optional] |
| **created_at** | **String** | The ISO 8601 time of when this webhook was created. | [optional] |
| **updated_at** | **String** | The ISO 8601 time of when this webhook was last updated. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::Webhook.new(
  uuid: null,
  url: null,
  hmac: null,
  basic_auth: null,
  retry_type: null,
  event_types: null,
  state: null,
  failed_count: null,
  last_moment_pushed: null,
  domain_id: null,
  created_at: null,
  updated_at: null
)
```

