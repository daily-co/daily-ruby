# Daily::DialoutPropertiesCodecs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio** | **Array&lt;String&gt;** | Specify the audio codecs to use for dial-out. Default codec is PCMU/PCMA. If the set codec is not supported by the remote party, the media stream will be transcoded and a transcoding charge will be applied. [&#39;OPUS&#39;, &#39;G722&#39;, &#39;PCMU&#39;, &#39;PCMA&#39;] | [optional] |
| **video** | **Array&lt;String&gt;** | Specify the video codecs to use for dial-out. Default coded is VP8. If the set codec is not supported by the remote party, the media stream will be transcoded and a transcoding charge will be applied. [&#39;H264&#39;, &#39;VP8&#39;]. | [optional] |

## Example

```ruby
require 'daily-ruby'

instance = Daily::DialoutPropertiesCodecs.new(
  audio: null,
  video: null
)
```

