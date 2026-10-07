# Hand-maintained. Not generated. Listed in .openapi-generator-ignore, and
# run.sh adds `require 'daily-ruby/compat'` to the end of lib/daily-ruby.rb.
#
# Why this file exists:
# 1.1.0 is a minor release, so code written for 1.0.x must keep working.
# Some users call this gem millions of times a day from 1.0.x code.
# The 1.1.0 regen changed five things that would break them:
#
# 1. Auth. The spec renamed the scheme from `sec0` (an API key in the
#    Authorization header) to `bearerAuth`. Generated code only reads
#    `config.access_token`. Old code sets `config.api_key['sec0']`, often
#    with `config.api_key_prefix['sec0'] = 'Bearer'`. Both still work here.
# 2. Responses. Many calls used to return a plain Hash with symbol keys
#    (for example `delete_room` gave `{ deleted: true, name: '...' }`). They
#    now return typed models. Every model gets `[]`, `fetch`, `key?` and
#    `dig`, so `result[:deleted]` and `result['deleted']` still work.
#    Models also get a `to_json` that returns real JSON.
# 3. A typo fix. `PhoneNumbersApi#purchased_phone_nunbers` is now
#    `purchased_phone_numbers`. The old name is kept as an alias.
# 4. room_sip_refer renamed its body option. The old name still works, so
#    1.0.x callers do not silently send an empty body.
# 5. The 1.0.x room config model ListRooms200ResponseDataInnerConfig is now
#    the shared RoomConfig. The old name is kept as an alias.
#
# Keep this file small. Do not add new behaviour here, only bridges for old
# callers. Tests live in spec/compat/.

module Daily
  class Configuration
    # The generated auth_settings (configuration.rb) only knows bearerAuth and
    # only reads access_token. This keeps the same shape and adds the 1.0.x
    # fallback.
    def auth_settings
      bearer = {
        type: 'bearer',
        in: 'header',
        key: 'Authorization',
        value: compat_authorization_value
      }
      {
        'bearerAuth' => bearer,
        # 1.0.x name. Only used if a caller passes debug_auth_names: ['sec0'].
        'sec0' => bearer.merge(type: 'api_key')
      }
    end

    private

    # Order:
    # 1. access_token or access_token_getter (the 1.1.0 way)
    # 2. api_key['sec0'] with api_key_prefix['sec0'] (the 1.0.x way)
    # 3. api_key['sec0'] with "Bearer " added, since Daily needs a Bearer
    #    token and 1.0.x users sometimes left the prefix off
    def compat_authorization_value
      token = access_token_with_refresh
      return "Bearer #{token}" unless token.nil? || token.to_s.empty?

      key = @api_key['sec0'] || @api_key[:sec0]
      unless key.nil? || key.to_s.empty?
        prefix = @api_key_prefix['sec0'] || @api_key_prefix[:sec0]
        return "#{prefix} #{key}" if prefix
        return key if key.to_s.start_with?('Bearer ')
        return "Bearer #{key}"
      end

      # Nothing set. Same as the generated code: the API will answer 401.
      "Bearer #{token}"
    end
  end

  # Hash-style reads on every generated model. Values come from to_hash, so
  # nested models come back as Hashes, the same as the 1.0.x plain Hash.
  # Keys can be symbols or strings, and either the JSON name (:mtgSessionId)
  # or the Ruby attribute name (:mtg_session_id).
  class ApiModelBase
    def [](key)
      hash = to_hash
      found = compat_find_key(hash, key)
      found.nil? ? nil : hash[found]
    end

    def fetch(key, *default)
      if default.length > 1
        raise ArgumentError, "wrong number of arguments (given #{default.length + 1}, expected 1..2)"
      end

      hash = to_hash
      found = compat_find_key(hash, key)
      return hash[found] unless found.nil?
      return yield(key) if block_given?
      return default.first unless default.empty?

      raise KeyError.new("key not found: #{key.inspect}", receiver: self, key: key)
    end

    def key?(key)
      !compat_find_key(to_hash, key).nil?
    end
    alias has_key? key?
    alias include? key?

    def dig(key, *rest)
      value = self[key]
      return value if rest.empty? || value.nil?

      value.dig(*rest)
    end

    def to_h
      to_hash
    end

    # Fix, not a bridge: without this, to_json (from the json stdlib) turned
    # the inspect string into JSON, in 1.0.x too. Request bodies were never
    # affected, they are built from to_hash.
    def to_json(*args)
      to_hash.to_json(*args)
    end

    private

    # to_hash keys are the JSON names as symbols. Return the matching key
    # in hash, or nil.
    def compat_find_key(hash, key)
      sym = key.to_s.to_sym
      return sym if hash.key?(sym)

      map = self.class.respond_to?(:attribute_map) ? self.class.attribute_map : {}
      json_name = map[sym]
      json_name = json_name.to_sym unless json_name.nil?
      return json_name if json_name && hash.key?(json_name)

      nil
    end
  end

  class PhoneNumbersApi
    # Deprecated: misspelled name from 1.0.x. Use purchased_phone_numbers.
    def purchased_phone_nunbers(opts = {})
      purchased_phone_numbers(opts)
    end

    # Deprecated: misspelled name from 1.0.x. Use
    # purchased_phone_numbers_with_http_info.
    def purchased_phone_nunbers_with_http_info(opts = {})
      purchased_phone_numbers_with_http_info(opts)
    end
  end

  class RoomsApi
    # 1.0.x took the body as opts[:room_sip_call_transfer_request]. The spec
    # renamed it to room_sip_refer_request. Without this, old callers would
    # send an empty body.
    alias_method :compat_generated_room_sip_refer_with_http_info, :room_sip_refer_with_http_info

    def room_sip_refer_with_http_info(room_name, opts = {})
      if opts.key?(:room_sip_call_transfer_request) && !opts.key?(:room_sip_refer_request)
        opts = opts.dup
        opts[:room_sip_refer_request] = opts.delete(:room_sip_call_transfer_request)
      end
      compat_generated_room_sip_refer_with_http_info(room_name, opts)
    end
  end

  # Deprecated: 1.0.x name for the room config model. Use RoomConfig.
  ListRooms200ResponseDataInnerConfig = RoomConfig
end
