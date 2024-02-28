# Daily::RoomPropertiesStreamingEndpointsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Used by the &#x60;startLiveStreaming()&#x60; API to reference which stream configuration to start. | [optional] |
| **type** | **String** | Whether the streaming endpoint is &#x60;rtmp&#x60; or &#x60;hls&#x60;. | [optional] |
| **hls_config_storage_path** | **String** | The &#x60;s3Key&#x60; path prefix for where to store the recordings. Therefore, the final final master.m3u8 path template is &#x60;&lt;bucket_name&gt;/&lt;path&gt;/&lt;mtgSessionId&gt;/master.m3u8&#x60;, i.e. &#x60;hls_config[&#39;storage&#39;][&#39;bucket_name&#39;]/hls_config[&#39;storage&#39;][&#39;path&#39;]/&lt;mtgSessionId&gt;/master.m3u8&#x60;. | [optional] |
| **hls_config_storage_path_template** | **String** | &#x60;path_template&#x60; is made up of a replacement string with prefixes, suffixes, or both. &#x60;path_template&#x60; without replacement string is also valid. The currently supported replacements are:   - &#x60;epoch_time&#x60;: The epoch time in seconds (optional)   - &#x60;domain_name&#x60;: Your Daily domain (optional)   - &#x60;room_name&#x60;: The name of the room which is getting recorded (optional)   - &#x60;mtg_session_id&#x60;: The ID of the meeting session which is getting recorded (optional)   - &#x60;instance_id&#x60;: The instance ID of the recording (optional)   - &#x60;live_streaming_id&#x60;: The ID of the live streaming in our DB (optional)    The restrictions for defining a recording template are as follows:   - The maximum size of the template is 1024 characters   - Each replacement parameter should be placed within a curly bracket (e.g., &#x60;{domain_name}&#x60;)   - Only alphanumeric characters &#x60;(0-9, A-Z, a-z)&#x60; and &#x60;.&#x60;, &#x60;/&#x60;, &#x60;-&#x60;, &#x60;_&#x60; are valid within the template  Examples - Example domain: \&quot;myDomain\&quot; - Example room: \&quot;myRoom\&quot; - example hls bucket: \&quot;HLS_S3_BUCKET\&quot;  Example 1: - Template: &#x60;my-hls-{domain_name}-{epoch_time}&#x60; - Resulting path of master.m3u8: &#x60;s3://HLS_S3_BUCKET/my-hls-myDomain-1675842936274/master.m3u8&#x60;  Example 2: - Template: &#x60;{room_name}/{instance_id}/&#x60; - Resulting path of master.m3u8: &#x60;myRoom/d529cd2f-fbcc-4fb7-b2c0-c4995b1162b6/master.m3u8&#x60; | [optional] |
| **hls_config_save_hls_recording** | **Boolean** | If &#x60;true&#x60;, the live stream will be saved as a recording after streaming has ended. If &#x60;false&#x60;, the stream is available only until the streaming is live. | [optional] |
| **hls_config_variants** | [**Array&lt;RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner&gt;**](RoomPropertiesStreamingEndpointsInnerHlsConfigVariantsInner.md) | An optional array of variants to generate for HLS. For most use cases this property can be omitted as Daily uses sensible defaults. The array defines the resolution, FPS, and bitrate for each variant. The following limitations apply:  - There can be a maximum of one variant with 1080p resolution. All other variants must be less than or equal to 720p. - A maximum of four variants can be specified, other than iframe-only stream - We do not support iframe-only variant, at least one full-stream variant is required | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::RoomPropertiesStreamingEndpointsInner.new(
  name: rtmp_ivs,
  type: hls,
  hls_config_storage_path: my-bucket-name/my-folder-name,
  hls_config_storage_path_template: null,
  hls_config_save_hls_recording: null,
  hls_config_variants: null
)
```

