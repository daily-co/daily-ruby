# Daily::CreateSipTrunkRequestTrunkConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_ips** | **Array&lt;String&gt;** | IPv4 addresses or canonical CIDR blocks (max 25) allowed to send INVITEs. | [optional] |
| **credential** | [**CreateSipTrunkRequestTrunkConfigCredential**](CreateSipTrunkRequestTrunkConfigCredential.md) |  | [optional] |
| **is_open** | **Boolean** | Set true to accept calls with NO admission control (dev/testing only). A trunk must be gated (allowed_ips and/or credential) XOR explicitly open. | [optional] |
| **exp_offset** | **Integer** | Provisioned-room lifetime in seconds (60-86400). | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::CreateSipTrunkRequestTrunkConfig.new(
  allowed_ips: null,
  credential: null,
  is_open: null,
  exp_offset: null
)
```

