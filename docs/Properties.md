# Daily::Properties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_name** | **String** | The room for which this token is valid. If &#x60;room_name&#x60; isn&#39;t set, the token is valid for all rooms in your domain. *You should always set &#x60;room_name&#x60; if you are using this token to control access to a meeting. | [optional] |
| **eject_at_token_exp** | **Boolean** | Kick this user out of the meeting at the time this meeting token expires. If either this property or &#x60;eject_after_elapsed&#x60; are set for the token, the room&#39;s &#x60;eject&#x60; properties are overridden.  _See an example in our [advanced security tutorial](https://www.daily.co/blog/add-advanced-security-features-to-video-chats-with-the-daily-api/)_. | [optional] |
| **eject_after_elapsed** | **Integer** | Kick this user out of the meeting this many seconds after they join the meeting. If either this property or &#x60;eject_at_token_exp&#x60; are set for the token, the room&#39;s &#x60;eject&#x60; properties are overridden.  _See an example in our [advanced security tutorial](https://www.daily.co/blog/add-advanced-security-features-to-video-chats-with-the-daily-api/)_. | [optional] |
| **nbf** | **Integer** | \&quot;Not before\&quot;. This is a [unix timestamp](https://stackoverflow.com/questions/20822821/what-is-a-unix-timestamp-and-why-use-it) (seconds since the epoch.) Users cannot join a meeting in with this token before this time. | [optional] |
| **exp** | **Integer** | \&quot;Expires\&quot;. This is a unix timestamp (seconds since the epoch.) Users cannot join a meeting with this token after this time.  Daily strongly recommends adding an &#x60;exp&#x60; value to all meeting tokens. Learn more in our Daily blog post: [Add advanced security to video chats with the Daily API](https://www.daily.co/blog/add-advanced-security-features-to-video-chats-with-the-daily-api/) | [optional] |
| **is_owner** | **Boolean** | The user has [meeting owner privileges](/docs/guides/privacy-and-security/controlling-who-joins-a-meeting#meeting-owner-privileges). For example, this user can send video, audio, and screenshare, and can perform administrative actions like muting other participants. | [optional] |
| **user_name** | **String** | The user&#39;s name in this meeting. The name displays in the user interface when the user is muted or has turned off the camera, and in the chat window. This username is also saved in the meeting events log (meeting events are retrievable using the [analytics](/products/rest-api/meetings) API methods.) | [optional] |
| **user_id** | **String** | The user&#39;s ID for this meeting session. During a session, this ID is retrievable in the [&#x60;participants()&#x60;](/products/daily-js/instance-methods/participants) method and [related participant events](/products/daily-js/events/participant-events). Either during or after a session concludes, this ID is retrievable using the [/meetings](/products/rest-api/meetings) REST API endpoint. You can use &#x60;user_id&#x60; to map between your user database and meeting events/attendance.  For domains configured for [HIPAA compliance](/guides/privacy-and-security/hipaa), if the &#x60;user_id&#x60; value is a [UUID](https://www.ietf.org/rfc/rfc4122.txt) (for example, &#x60;f81d4fae-7dec-11d0-a765-00a0c91e6bf6&#x60;), then the UUID will be returned for the participant in the [&#x60;/meetings&#x60;](/products/rest-api/meetings) REST API endpoint. Otherwise, the string &#x60;hipaa&#x60; will be returned in order to remove potential PHI. During a session, the provided &#x60;user_id&#x60; will always be returned through the &#x60;participants()&#x60; method and related events, regardless of the &#x60;user_id&#x60; value.  The &#x60;user_id&#x60; has a limit of 36 characters. | [optional] |
| **enable_screenshare** | **Boolean** | Sets whether or not the user is allowed to screen share. This setting applies for the duration of the meeting. If you&#39;re looking to dynamically control whether a user can screen share during a meeting, then use the [&#x60;permissions&#x60;](/products/rest-api/meeting-tokens/config#permissions) token property. | [optional] |
| **start_video_off** | **Boolean** | Disable the default behavior of automatically turning on a participant&#39;s camera on a direct &#x60;join()&#x60; (i.e. without &#x60;startCamera()&#x60; first). | [optional] |
| **start_audio_off** | **Boolean** | Disable the default behavior of automatically turning on a participant&#39;s microphone on a direct &#x60;join()&#x60; (i.e. without &#x60;startCamera()&#x60; first). | [optional] |
| **enable_recording** | [**RoomConfigEnableRecording**](RoomConfigEnableRecording.md) |  | [optional] |
| **enable_prejoin_ui** | **Boolean** | Determines whether the participant using the meeting token enters a waiting room with a camera, mic, and browser check before joining a call. If this property is also set in the room or domain&#39;s configuration, the meeting token&#39;s configuration will take priority.  ⚠️ You must be using [Daily Prebuilt](https://daily.co/prebuilt) to use &#x60;enable_prejoin_ui&#x60;. | [optional] |
| **enable_live_captions_ui** | **Boolean** | Sets whether the participant sees a closed captions button in their Daily Prebuilt call tray. When the closed caption button is clicked, closed captions are displayed locally.  When set to &#x60;true&#x60;, a closed captions button appears in the call tray. When set to &#x60;false&#x60;, the closed captions button is hidden from the call tray.  Note: Transcription must be enabled for the room or users must have permission to start transcription for this feature to be enabled. View the [transcription guide](/guides/products/transcription) for more details.  ⚠️ You must be using [Daily Prebuilt](https://daily.co/blog/daily-prebuilt-video-chat) to use &#x60;enable_live_captions_ui&#x60;. | [optional] |
| **enable_recording_ui** | **Boolean** | Determines whether the participant using the meeting token can see the Recording button in Daily Prebuilt&#39;s UI, which can be found in the video call tray. If this value is &#x60;false&#x60;, the button will not be included in the tray. If it&#39;s &#x60;true&#x60;, the Recording button will be displayed.  This option is useful when only specific call participants should have recording permissions.   ⚠️ You must be using [Daily Prebuilt](https://daily.co/prebuilt) to use &#x60;enable_recording_ui&#x60;. | [optional] |
| **enable_terse_logging** | **Boolean** | Reduces the volume of log messages. This feature should be enabled when there are more than 200 participants in a meeting to help improve performance.  See our [guides for supporting large experiences](/guides/scaling-calls) for additional instruction. | [optional] |
| **knocking** | **Boolean** | Requires the &#x60;enable_knocking&#x60; property to be set on the room. By default, if a user joins a room with &#x60;enable_knocking&#x60; set, and with a token, they will bypass the waiting screen and join the room directly. If this property is set to &#x60;true&#x60;, the user will be required to request access, and the owner will need to accept them before they can join. | [optional] |
| **start_cloud_recording** | **Boolean** | Start cloud recording when the user joins the room. This can be used to always record and archive meetings, for example in a customer support context.  Note: This requires the &#x60;enable_recording&#x60; property of the room or token to be set to &#x60;cloud&#x60;. If you want to automatically record calls with other recording modes, use &#x60;callObject.startRecording()&#x60; after &#x60;await callObject.join()&#x60; in your code. | [optional] |
| **start_cloud_recording_opts** | **Object** | Options for use when &#x60;start_cloud_recording&#x60; is &#x60;true&#x60;. See [&#x60;startRecording&#x60;](/products/daily-js/instance-methods/start-recording) for available options.  ⚠️ Specifying too many options may cause the token size to be very large. It is recommended to use token less than 2048 characters. For complex usecases, use the daily-js API. | [optional] |
| **auto_start_transcription** | **Boolean** | Start transcription when an owner joins the room. This property can be used to always transcribe meetings once an owner joins. | [optional] |
| **close_tab_on_exit** | **Boolean** | (For meetings that open in a separate browser tab.) When a user leaves a meeting using the button in the in-call menu bar, the browser tab closes. This can be a good way, especially on mobile, for users to be returned to a previous website flow after a call. | [optional] |
| **redirect_on_meeting_exit** | **String** | (For meetings that open in a separate browser tab.) When a user leaves a meeting using the button in the in-call menu bar, the browser loads this URL. A query string that includes a parameter of the form &#x60;recent-call&#x3D;&lt;domain&gt;/&lt;room&gt;&#x60; is appended to the URL. On mobile, you can redirect to a deep link to bring a user back into your app.  If the [&#x60;redirect_on_meeting_exit_allowed_hosts&#x60;](/reference/rest-api/domain/set-domain-config#body-properties-redirect-on-meeting-exit-allowed-hosts) domain property is set, this destination must be permitted by that allowlist, or the redirect is dropped and the participant is not redirected on leaving. This applies to [self-signed tokens](/docs/guides/privacy-and-security/self-signing-tokens) as well as tokens created through this API. | [optional] |
| **lang** | **String** | The default language of the [Daily prebuilt video call UI](/products/prebuilt), for this room.   Setting the language at the token level will override any room or domain-level language settings you have.  &#x60;*&#x60; Norwegian &#x60;\&quot;no\&quot;&#x60; and Russian &#x60;\&quot;ru\&quot;&#x60; are only available in the new Daily Prebuilt.  See [language settings](/products/prebuilt/language) for all supported values and priority order. | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::Properties.new(
  room_name: null,
  eject_at_token_exp: null,
  eject_after_elapsed: null,
  nbf: null,
  exp: null,
  is_owner: null,
  user_name: null,
  user_id: null,
  enable_screenshare: null,
  start_video_off: null,
  start_audio_off: null,
  enable_recording: null,
  enable_prejoin_ui: null,
  enable_live_captions_ui: null,
  enable_recording_ui: null,
  enable_terse_logging: null,
  knocking: null,
  start_cloud_recording: null,
  start_cloud_recording_opts: null,
  auto_start_transcription: null,
  close_tab_on_exit: null,
  redirect_on_meeting_exit: null,
  lang: null,
  permissions: null
)
```

