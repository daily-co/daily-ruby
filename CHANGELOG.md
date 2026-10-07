# Changelog

## 1.1.0 (unreleased)

> Release blocker: this version was generated from the pluot-core branch
> `jamsea/openapi-hls-config-nested` at commit `c479bb0d59`
> (see `.openapi-generator/SPEC_SOURCE`). That spec change must merge to
> pluot-core main before this gem is released.

Code written for 1.0.x should keep working without changes. The one known
exception is `owner_only_broadcast` (see below).

### Tooling

- OpenAPI Generator bumped from 7.8.0 to 7.26.0. `run.sh` now downloads a
  pinned jar and checks its checksum, instead of using whatever version is
  installed.
- `run.sh` accepts `SPEC_SRC` as a URL, a local file, or
  `git:<repo>@<ref>:<path>`, and records where the spec came from in
  `.openapi-generator/SPEC_SOURCE`.
- `run.sh` checks that every generated Ruby file parses.
- `scripts/strip-placeholder-defaults.jq` now removes every `default` from
  the request and response schemas, and `run.sh` fails if any model still
  fills one in. See the behaviour note below.
- `.travis.yml` now tests Ruby 3.1 to 3.3, the same as GitHub Actions and
  the gemspec, reads the gem version from `lib/daily-ruby/version.rb`, and
  the generator no longer overwrites it.
- `run.sh` deletes generated files for models the spec dropped (skipping
  anything in `.openapi-generator-ignore`) and prints what it deleted.
- All models now inherit from the new `Daily::ApiModelBase`.

### New API calls

17 new operations, plus one renamed operation (71 in total, up from 54).

New class `Daily::DomainDialinConfigApi`:

- `create_domain_dial_config_info` (POST /domain-dialin-config)
- `list_domain_dialin_configs` (GET /domain-dialin-config)
- `get_domain_dialin_config_info` (GET /domain-dialin-config/{id})
- `update_domain_dial_config_info` (PUT /domain-dialin-config/{id})
- `delete_domain_dialin_config` (DELETE /domain-dialin-config/{id})

New on `Daily::DialinApi`:

- SIP clients: `create_sip_client`, `list_sip_clients`, `get_sip_client`,
  `rotate_sip_client`, `delete_sip_client`
- SIP trunks: `create_sip_trunk`, `list_sip_trunks`, `get_sip_trunk`,
  `update_sip_trunk`, `delete_sip_trunk`

Also new:

- `RoomsApi#room_transcription_update` (POST /rooms/{room_name}/transcription/update)
- `RecordingsApi#test_oci_bucket` (GET /recordings/test-oci-bucket)
- `PhoneNumbersApi#purchased_phone_numbers` (the old misspelled name still works, see below)

New options on existing calls:

- `TranscriptApi#list_transcript` takes `room_name`.
- `RecordingsApi#get_recording_link` takes `valid_for_secs`.
- `RoomsApi#room_transcription_stop` takes a `room_transcription_stop_request` body.

New fields, for example `storage_provider` on recording info, nested
`hls_config` on room streaming endpoints, and new room properties `sip`,
`dialout_config`, `enable_dialout`, `transcription_template`,
`enable_raw_tracks_transcoded_audio` and `enable_cpu_warning_notifications`.

### Compatibility with 1.0.x

These are handled in `lib/daily-ruby/compat.rb`.

- **Auth.** The spec renamed the auth scheme from `sec0` to `bearerAuth`.
  The new way is `config.access_token = key`. The old
  `config.api_key['sec0'] = key` (with or without
  `config.api_key_prefix['sec0'] = 'Bearer'`) still works. If both are set,
  `access_token` wins.
- **Typed responses.** Calls that used to return a plain Hash now return
  models, for example `delete_room` returns `Daily::DeleteRoom200Response`.
  Every model supports `result[:deleted]`, `result['deleted']`, `fetch`,
  `key?`, `dig` and `to_h`, so Hash-style code keeps working. Nested values
  come back as Hashes, the same as before.
  The table below lists every call whose return type changed.

| Call | 1.0.5 returned | 1.1.0 returns |
|---|---|---|
| `RoomsApi#delete_room` | Hash | `DeleteRoom200Response` |
| `RecordingsApi#delete_recording` | Hash | `DeleteRecording200Response` |
| `LogsApi#list_logs` | Hash | `ListLogs200Response` |
| `LogsApi#list_api_logs` | `ListAPILogs200Response` | Array of `ListAPILogs200ResponseInner` |
| `PhoneNumbersApi#release_phone_number` | Hash | `DeleteDomainDialinConfig200Response` |
| `PresenceApi#get_presence` | `GetPresence200Response` | Hash of room name (a symbol) to Array of `GetPresence200ResponseValueInner` |
| `RoomsApi#room_sip_refer` | Hash | `RoomSipCallTransfer200Response` |
| `RoomsApi#room_sip_call_transfer` | nil | `RoomSipCallTransfer200Response` |
| `RoomsApi#set_room_config` | nil | `RoomsRoomNameGetRes` |
| `WebhooksApi#delete_webhook` | Hash, or nil for an empty body | nil |

- **Typo fix.** `PhoneNumbersApi#purchased_phone_nunbers` is renamed to
  `purchased_phone_numbers`. The old name is kept as a deprecated alias.
- **`enable_recording`** on room and token properties now accepts a string
  or an array of strings, for example `['cloud', 'raw-tracks']`. Strings
  work as before.
- **`room_sip_refer`** still accepts the old `room_sip_call_transfer_request`
  option (renamed to `room_sip_refer_request`).
- **`ListRooms200ResponseDataInnerConfig`** is now `RoomConfig`. The old
  name still works as a deprecated alias.

### Breaking or behaviour changes

- **Ruby 3.1 or newer is required.** Ruby 3.0 reached end of life in
  April 2024 and is no longer tested or supported. 1.0.x allowed 3.0.
- **`owner_only_broadcast` is removed** from `RoomProperties` and
  `DomainProperties`, because the API removed it (Daily changelog,
  2026-02-24). Passing it now raises `ArgumentError`. Remove it from your
  code. If it shows up in a response it is ignored.
- `RoomProperties.new(enable_recording: nil)` now sends
  `"enable_recording": null`, because the spec marks it nullable. Leaving it
  out still sends nothing.
- **The SDK no longer fills in default values.** It only sends the fields
  you set, and the server applies its own defaults. 1.0.x sent spec defaults
  on every request, for example `enable_chat: false` and
  `max_participants: 200` on every room create or update. That could
  override domain settings, and on update it could switch a feature off.
  Response models also no longer show default values the server did not
  send: a missing field is now `nil`.
  If your code relied on a default being sent, set that field yourself.
  The defaults that are no longer filled in, by model (values from the spec;
  "1.0.5 only" means the field or default is gone from the spec, "new in
  1.1.0 regen" means only an unreleased 1.1.0 build had it):

  - `CreateRoom200Response`: `api_created: true`
  - `CreateSipTrunkRequest`: `enabled: true` (new in 1.1.0 regen)
  - `CreateSipTrunkRequestTrunkConfig`: `exp_offset: 3600` (new in 1.1.0 regen), `is_open: false` (new in 1.1.0 regen)
  - `DailyLiveStreamingOptions`: `type: 'cloud'` (new in 1.1.0 regen)
  - `DialoutProperties`: `waitBeforeExtensionDialSec: 0` (new in 1.1.0 regen)
  - `DialoutPropertiesVideoSettings`: `fps: 15` (new in 1.1.0 regen), `height: 720` (new in 1.1.0 regen), `videoBitrate: 900` (new in 1.1.0 regen), `width: 1280` (new in 1.1.0 regen)
  - `DomainProperties`: `disable_rtmp_geo_fallback: false`, `enable_adaptive_simulcast: true`, `enable_advanced_chat: false`, `enable_breakout_rooms: false`, `enable_cpu_warning_notifications: true` (new in 1.1.0 regen), `enable_emoji_reactions: false`, `enable_hand_raising: false`, `enable_live_captions_ui: false`, `enable_multiparty_adaptive_simulcast: false` (new in 1.1.0 regen), `enable_network_ui: false`, `enable_noise_cancellation_ui: true`, `enable_people_ui: true`, `enable_pip_ui: false`, `enable_prejoin_ui: true`, `enable_terse_logging: false`, `enable_transcription_storage: false`, `enable_video_processing_ui: true`, `enforce_unique_user_ids: false`, `hide_daily_branding: false`, `hipaa: false`, `lang: 'en'`, `sfu_switchover: 0.5`
  - `EjectRequest`: `ban: false`
  - `GetRecordingLink200Response`: `expires: 0`
  - `ListDomainDialinConfigs200Response`: `total_count: 0` (new in 1.1.0 regen)
  - `ListRecordings200Response`: `total_count: 0`
  - `ListRecordings200ResponseDataInner`: `max_participants: 0`, `start_ts: 0`
  - `ListRooms200Response`: `total_count: 0`
  - `ListRooms200ResponseDataInner`: `api_created: true`
  - `ListRooms200ResponseDataInnerConfig`: `start_video_off: true`
  - `ListTranscript200Response`: `total_count: 0`
  - `Properties`: `auto_start_transcription: false`, `close_tab_on_exit: false`, `eject_at_token_exp: false`, `enable_screenshare: true`, `enable_terse_logging: false`, `is_owner: false`, `knocking: false` (new in 1.1.0 regen), `lang: 'en'`, `start_audio_off: false`, `start_cloud_recording: false`, `start_video_off: false`
  - `RecordingStreamingOptions`: `type: 'cloud'`
  - `RecordingsBucket`: `allow_streaming_from_bucket: false` (1.0.5 only), `storage_provider: 'aws'` (new in 1.1.0 regen)
  - `RoomProperties`: `disable_rtmp_geo_fallback: false`, `eject_at_room_exp: false`, `enable_adaptive_simulcast: true`, `enable_advanced_chat: false`, `enable_chat: false`, `enable_dialout: false` (new in 1.1.0 regen), `enable_hidden_participants: false`, `enable_multiparty_adaptive_simulcast: false`, `enable_screenshare: true`, `enable_shared_chat_history: true`, `enable_terse_logging: false`, `enable_transcription_storage: false`, `enable_video_processing_ui: true`, `enforce_unique_user_ids: false`, `lang: 'en'`, `max_participants: 200`, `owner_only_broadcast: false` (1.0.5 only), `sfu_switchover: 0.5`, `start_audio_off: false`, `start_video_off: false`
  - `RoomPropertiesDialoutConfig`: `allow_room_start: false` (new in 1.1.0 regen), `max_idle_timeout_sec: 0` (new in 1.1.0 regen)
  - `RoomPropertiesSip`: `force_digit_only_username: false` (new in 1.1.0 regen), `num_endpoints: 1` (new in 1.1.0 regen), `video: false` (new in 1.1.0 regen)
  - `RoomPropertiesSipDialinConfig`: `allow_room_start: false` (new in 1.1.0 regen), `hold_music_enabled: false` (new in 1.1.0 regen), `max_idle_timeout_sec: 0` (new in 1.1.0 regen)
  - `RoomSipCallTransferRequest`: `waitBeforeExtensionDialSec: 0` (new in 1.1.0 regen)
  - `RoomsRoomNameGetRes`: `api_created: true`
  - `RoomConfig` (an earlier 1.1.0 build called it `RoomsRoomNameGetResConfig`): `disable_rtmp_geo_fallback: false` (new in 1.1.0 regen), `eject_at_room_exp: false` (new in 1.1.0 regen), `enable_adaptive_simulcast: true` (new in 1.1.0 regen), `enable_advanced_chat: false` (new in 1.1.0 regen), `enable_chat: false` (new in 1.1.0 regen), `enable_dialout: false` (new in 1.1.0 regen), `enable_hidden_participants: false` (new in 1.1.0 regen), `enable_multiparty_adaptive_simulcast: false` (new in 1.1.0 regen), `enable_screenshare: true` (new in 1.1.0 regen), `enable_shared_chat_history: true` (new in 1.1.0 regen), `enable_terse_logging: false` (new in 1.1.0 regen), `enable_transcription_storage: false` (new in 1.1.0 regen), `enable_video_processing_ui: true` (new in 1.1.0 regen), `enforce_unique_user_ids: false` (new in 1.1.0 regen), `lang: 'en'` (new in 1.1.0 regen), `max_participants: 200` (new in 1.1.0 regen), `sfu_switchover: 0.5` (new in 1.1.0 regen), `start_audio_off: false` (new in 1.1.0 regen), `start_video_off: false` (new in 1.1.0 regen)
  - `SendAppMessageRequest`: `recipient: '*'`
  - `SetSessionDataRequest`: `mergeStrategy: 'replace'`
  - `TranscriptionBucket`: `storage_provider: 'aws'` (new in 1.1.0 regen)
  - `TranscriptionProperties`: `transcription_geo: 'global'` (new in 1.1.0 regen)
  - `ValidateMeetingToken200Response`: `is_owner: true`, `start_audio_off: true`, `start_video_off: true`
- `room_sip_refer` and `room_sip_call_transfer` return a typed model with
  `ok`. The spec examples changed from the string `"true"` to the boolean
  `true`, which is what the server sends. `result[:ok]` works too.
- The room `config` in `create_room`, `set_room_config`, `get_room_config`
  and `list_rooms` results is now one shared model, `Daily::RoomConfig`,
  with all room properties. In 1.0.5 the `list_rooms` and `create_room`
  config model only had `start_video_off`, so every other field was dropped.
- `delete_webhook` returns nil. The API answers 200 with an empty body.
  1.0.5 also returned nil for an empty body, so callers see no change.
- Removed models that the spec no longer has: `GetPresence200Response`,
  `GetPresence200ResponseAIVWWhzHlLHrSdHdw7EWInner`,
  `ListAPILogs200Response`, `DailyStreamingCustomLayoutConfigCompositionParams`,
  and `ListRooms200ResponseDataInnerConfig` (replaced by `RoomConfig`, the
  old name is kept as an alias).

### Fixes

- `model.to_json` now returns real JSON. Before, it returned the Ruby
  inspect string as a JSON string. Request bodies were never affected.
- Room streaming endpoints now send `hls_config` and `rtmp_config` as the
  nested objects the server expects. In 1.0.x, reading
  `RoomPropertiesStreamingEndpointsInner.attribute_map` raised an error.

### Tests

- Real unit tests replace the generator's empty stubs. They use webmock and
  never touch the network.
- Live integration tests: `DAILY_API_KEY=... bundle exec rspec --tag integration`.
