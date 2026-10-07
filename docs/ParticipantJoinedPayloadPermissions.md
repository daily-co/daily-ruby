# Daily::ParticipantJoinedPayloadPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_presence** | **Boolean** | Determines whether the participant is \&quot;present\&quot; or \&quot;hidden\&quot; | [optional] |
| **can_send** | **Array&lt;String&gt;** | Array of strings identifying which types of media the participant can send or a boolean to grant/revoke permissions for all media types. | [optional] |
| **can_receive** | **Object** | Which media the participant should be permitted to receive.   [See here for &#x60;canReceive&#x60; object format](/products/daily-js/instance-methods/participants#permissionscanreceive-properties). | [optional] |
| **can_admin** | **Array&lt;String&gt;** | Array of strings identifying which types of admin tasks the participant can do or a boolean to grant/revoke permissions for all types. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::ParticipantJoinedPayloadPermissions.new(
  has_presence: null,
  can_send: null,
  can_receive: null,
  can_admin: null
)
```

