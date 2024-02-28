# Daily::ListAPILogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An ID identifying the log that was generated. | [optional] |
| **user_id** | **String** | The user ID associated with the owner of the account.  | [optional] |
| **domain_id** | **String** | The domain ID associated with this log statement. | [optional] |
| **source** | **String** | The source of this log statement. This will be &#x60;\&quot;api\&quot;&#x60; or &#x60;\&quot;webhook\&quot;&#x60;. | [optional] |
| **ip** | **String** | The originating IP address of this request. | [optional] |
| **method** | **String** | The HTTP method used for this request. | [optional] |
| **url** | **String** | The API route that was queried. | [optional] |
| **status** | **String** | The HTTP status code returned by the endpoint. | [optional] |
| **created_at** | **String** | The timestamp representing when the record was created. | [optional] |
| **request** | **String** | A JSON string representing the request body of this API request. | [optional] |
| **response** | **String** | A JSON string representing the response body of this API request. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ListAPILogs200Response.new(
  id: null,
  user_id: null,
  domain_id: null,
  source: null,
  ip: null,
  method: null,
  url: null,
  status: null,
  created_at: null,
  request: null,
  response: null
)
```

