# Daily::GetDomainConfig200ResponseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hide_daily_branding** | **Boolean** | Whether \&quot;Powered by Daily\&quot; displays in the in-call UI. | [optional] |
| **redirect_on_meeting_exit** | **String** | (For meetings that open in a separate browser tab.) When a user clicks on the in-call menu bar&#39;s \&quot;leave meeting\&quot; button, the browser loads this URL. A query string that includes a parameter of the form &#x60;recent-call&#x3D;&lt;domain&gt;/&lt;room&gt;&#x60; is appended to the URL. On mobile, you can redirect to a deep link to bring a user back into your app.  If &#x60;redirect_on_meeting_exit_allowed_hosts&#x60; is set on your domain, this destination must be permitted by that allowlist, or the redirect is dropped and the participant is not redirected on leaving. | [optional] |
| **redirect_on_meeting_exit_allowed_hosts** | **Array&lt;String&gt;** | Optional allowlist restricting where &#x60;redirect_on_meeting_exit&#x60; may send participants, including from [self-signed tokens](/docs/guides/privacy-and-security/self-signing-tokens). Unset (the default) permits any destination; an empty array permits none. Entries are hostnames, optionally prefixed with &#x60;*.&#x60; to match subdomains, or a bare URL scheme ending in &#x60;:&#x60; for mobile app deep links, e.g. &#x60;[\&quot;app.example.com\&quot;, \&quot;*.example.com\&quot;, \&quot;myapp:\&quot;]&#x60;. | [optional] |
| **meeting_join_hook** | **String** | Sets a URL that will receive a webhook when a user joins a room.  ⚠️ In place of the &#x60;meeting_join_hook&#x60;, we recommend setting up a [webhook](/products/rest-api/webhooks) and listening for the [&#x60;participant.joined&#x60;](/products/rest-api/webhooks/events/participant-joined) event. | [optional] |
| **hipaa** | **Boolean** | Email us at help@daily.co to turn on HIPAA. Learn more about [our HIPAA compliance](https://www.daily.co/hipaa-compliance). | [optional] |
| **intercom_auto_record** | **Boolean** | Whether to automatically start recording when an Intercom support agent joins an Intercom-created call. Please see our [Intercom Messenger App page](https://www.daily.co/intercom) for more information.   ⚠️This method is read-only; please contact us if you&#39;d like to enable intercom call auto-recording. | [optional] |
| **intercom_manual_record** | **String** |  | [optional] |
| **sfu_impl** | **String** |  | [optional] |
| **sfu_switchover** | **Integer** |  | [optional] |
| **switchover_impl** | **String** |  | [optional] |
| **lang** | **String** | The default language for the video call UI, for all calls.   If you set the language at this domain level, you can still override the setting for specific rooms in [a room&#39;s configuration properties](/products/rest-api/rooms/config), or for a specific participant in a [meeting token](/products/rest-api/meeting-tokens/config).   You can also set the language dynamically using the front-end library [setDailyLang() method](/products/daily-js/instance-methods/set-daily-lang).  &#x60;*&#x60; Norwegian &#x60;\&quot;no\&quot;&#x60; and Russian &#x60;\&quot;ru\&quot;&#x60; are only available in the new Daily Prebuilt. | [optional] |
| **webhook_meeting_end** | **String** |  | [optional] |
| **recordings_bucket** | [**GetDomainConfig200ResponseConfigRecordingsBucket**](GetDomainConfig200ResponseConfigRecordingsBucket.md) |  | [optional] |
| **max_live_streams** | **Float** |  | [optional] |
| **max_streaming_instances_per_room** | **Float** |  | [optional] |
| **enable_daily_logger** | **Boolean** |  | [optional] |
| **enable_prejoin_ui** | **Boolean** | Determines whether participants enter a waiting room with a camera, mic, and browser check before joining a call in any room under this domain.   ⚠️ You must be using [Daily Prebuilt](https://daily.co/blog/daily-prebuilt-video-chat) to use &#x60;enable_prejoin_ui&#x60;. | [optional] |
| **enable_live_captions_ui** | **Boolean** | Sets whether participants in a room see a closed captions button in their Daily Prebuilt call tray. When the closed caption button is clicked, closed captions are displayed locally.  When set to &#x60;true&#x60;, a closed captions button appears in the call tray. When set to &#x60;false&#x60;, the closed captions button is hidden from the call tray.  Note: Transcription must be enabled for the room or users must have permission to start transcription for this feature to be enabled. View the [transcription guide](/guides/products/transcription) for more details.  ⚠️ You must be using [Daily Prebuilt](https://daily.co/blog/daily-prebuilt-video-chat) to use &#x60;enable_live_captions_ui&#x60;. | [optional] |
| **enable_network_ui** | **Boolean** | Determines whether the network button, and the network panel it reveals on click, appears across all rooms belonging to this domain.   ⚠️ You must be using [Daily Prebuilt](https://daily.co/blog/daily-prebuilt-video-chat) to use &#x60;enable_network_ui&#x60;. | [optional] |
| **disable_rate_limiting** | **Boolean** |  | [optional] |
| **attach_callobject_to_window** | **Boolean** |  | [optional] |
| **enable_raw_tracks_transcoded_audio** | **String** | Enable gapless transcoded audio for &#x60;raw-tracks&#x60; recordings in all rooms under this domain. When set, each participant&#39;s audio track is decoded, gaps (muted mic, idle periods, packet loss) are filled with silence, and the track is re-encoded as a continuous file. Affects audio tracks only; video tracks still record as &#x60;.webm&#x60;. A room value takes priority over this domain value.  Supported values:  * &#x60;aac&#x60;: AAC at 160 kbps, 48 kHz stereo, in an MP4 container. * &#x60;wav-48k-stereo&#x60; (aliases &#x60;wav&#x60; and &#x60;wav-48k&#x60;): 16-bit PCM WAV, 48 kHz stereo. * &#x60;wav-48k-mono&#x60;: 16-bit PCM WAV, 48 kHz mono. * &#x60;wav-44k1-stereo&#x60; (alias &#x60;wav-44k1&#x60;): 16-bit PCM WAV, 44.1 kHz stereo. * &#x60;wav-44k1-mono&#x60;: 16-bit PCM WAV, 44.1 kHz mono.  Leave unset to keep the default Opus audio in a &#x60;.webm&#x60; container. See the [recording guide](/docs/guides/features/recording#gapless-transcoded-audio). | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::GetDomainConfig200ResponseConfig.new(
  hide_daily_branding: null,
  redirect_on_meeting_exit: null,
  redirect_on_meeting_exit_allowed_hosts: null,
  meeting_join_hook: null,
  hipaa: null,
  intercom_auto_record: null,
  intercom_manual_record: null,
  sfu_impl: null,
  sfu_switchover: null,
  switchover_impl: null,
  lang: null,
  webhook_meeting_end: null,
  recordings_bucket: null,
  max_live_streams: null,
  max_streaming_instances_per_room: null,
  enable_daily_logger: null,
  enable_prejoin_ui: null,
  enable_live_captions_ui: null,
  enable_network_ui: null,
  disable_rate_limiting: null,
  attach_callobject_to_window: null,
  enable_raw_tracks_transcoded_audio: null
)
```

