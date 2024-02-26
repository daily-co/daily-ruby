=begin
#Daily

#The official library for communicating with the Daily REST API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module Daily
  class RoomRequestProperties
    attr_accessor :nbf

    attr_accessor :exp

    attr_accessor :max_participants

    attr_accessor :enable_people_ui

    attr_accessor :enable_pip_ui

    attr_accessor :enable_emoji_reactions

    attr_accessor :enable_hand_raising

    attr_accessor :enable_prejoin_ui

    attr_accessor :enable_live_captions_ui

    attr_accessor :enable_network_ui

    attr_accessor :enable_noise_cancellation_ui

    attr_accessor :enable_breakout_rooms

    attr_accessor :enable_knocking

    attr_accessor :enable_screenshare

    attr_accessor :enable_video_processing_ui

    attr_accessor :enable_chat

    attr_accessor :start_video_off

    attr_accessor :start_audio_off

    attr_accessor :owner_only_broadcast

    attr_accessor :enable_recording

    attr_accessor :eject_at_room_exp

    attr_accessor :eject_after_elapsed

    attr_accessor :enable_advanced_chat

    attr_accessor :enable_hidden_participants

    attr_accessor :enable_mesh_sfu

    attr_accessor :sfu_switchover

    attr_accessor :experimental_optimize_large_calls

    attr_accessor :lang

    attr_accessor :meeting_join_hook

    attr_accessor :geo

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nbf' => :'nbf',
        :'exp' => :'exp',
        :'max_participants' => :'max_participants',
        :'enable_people_ui' => :'enable_people_ui',
        :'enable_pip_ui' => :'enable_pip_ui',
        :'enable_emoji_reactions' => :'enable_emoji_reactions',
        :'enable_hand_raising' => :'enable_hand_raising',
        :'enable_prejoin_ui' => :'enable_prejoin_ui',
        :'enable_live_captions_ui' => :'enable_live_captions_ui',
        :'enable_network_ui' => :'enable_network_ui',
        :'enable_noise_cancellation_ui' => :'enable_noise_cancellation_ui',
        :'enable_breakout_rooms' => :'enable_breakout_rooms',
        :'enable_knocking' => :'enable_knocking',
        :'enable_screenshare' => :'enable_screenshare',
        :'enable_video_processing_ui' => :'enable_video_processing_ui',
        :'enable_chat' => :'enable_chat',
        :'start_video_off' => :'start_video_off',
        :'start_audio_off' => :'start_audio_off',
        :'owner_only_broadcast' => :'owner_only_broadcast',
        :'enable_recording' => :'enable_recording',
        :'eject_at_room_exp' => :'eject_at_room_exp',
        :'eject_after_elapsed' => :'eject_after_elapsed',
        :'enable_advanced_chat' => :'enable_advanced_chat',
        :'enable_hidden_participants' => :'enable_hidden_participants',
        :'enable_mesh_sfu' => :'enable_mesh_sfu',
        :'sfu_switchover' => :'sfu_switchover',
        :'experimental_optimize_large_calls' => :'experimental_optimize_large_calls',
        :'lang' => :'lang',
        :'meeting_join_hook' => :'meeting_join_hook',
        :'geo' => :'geo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'nbf' => :'Integer',
        :'exp' => :'Integer',
        :'max_participants' => :'Integer',
        :'enable_people_ui' => :'Boolean',
        :'enable_pip_ui' => :'Boolean',
        :'enable_emoji_reactions' => :'Boolean',
        :'enable_hand_raising' => :'Boolean',
        :'enable_prejoin_ui' => :'Boolean',
        :'enable_live_captions_ui' => :'Boolean',
        :'enable_network_ui' => :'Boolean',
        :'enable_noise_cancellation_ui' => :'Boolean',
        :'enable_breakout_rooms' => :'Boolean',
        :'enable_knocking' => :'Boolean',
        :'enable_screenshare' => :'Boolean',
        :'enable_video_processing_ui' => :'Boolean',
        :'enable_chat' => :'Boolean',
        :'start_video_off' => :'Boolean',
        :'start_audio_off' => :'Boolean',
        :'owner_only_broadcast' => :'Boolean',
        :'enable_recording' => :'String',
        :'eject_at_room_exp' => :'Boolean',
        :'eject_after_elapsed' => :'Boolean',
        :'enable_advanced_chat' => :'Boolean',
        :'enable_hidden_participants' => :'Boolean',
        :'enable_mesh_sfu' => :'Boolean',
        :'sfu_switchover' => :'Float',
        :'experimental_optimize_large_calls' => :'Boolean',
        :'lang' => :'String',
        :'meeting_join_hook' => :'String',
        :'geo' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Daily::RoomRequestProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Daily::RoomRequestProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'nbf')
        self.nbf = attributes[:'nbf']
      end

      if attributes.key?(:'exp')
        self.exp = attributes[:'exp']
      end

      if attributes.key?(:'max_participants')
        self.max_participants = attributes[:'max_participants']
      end

      if attributes.key?(:'enable_people_ui')
        self.enable_people_ui = attributes[:'enable_people_ui']
      end

      if attributes.key?(:'enable_pip_ui')
        self.enable_pip_ui = attributes[:'enable_pip_ui']
      end

      if attributes.key?(:'enable_emoji_reactions')
        self.enable_emoji_reactions = attributes[:'enable_emoji_reactions']
      end

      if attributes.key?(:'enable_hand_raising')
        self.enable_hand_raising = attributes[:'enable_hand_raising']
      end

      if attributes.key?(:'enable_prejoin_ui')
        self.enable_prejoin_ui = attributes[:'enable_prejoin_ui']
      end

      if attributes.key?(:'enable_live_captions_ui')
        self.enable_live_captions_ui = attributes[:'enable_live_captions_ui']
      end

      if attributes.key?(:'enable_network_ui')
        self.enable_network_ui = attributes[:'enable_network_ui']
      end

      if attributes.key?(:'enable_noise_cancellation_ui')
        self.enable_noise_cancellation_ui = attributes[:'enable_noise_cancellation_ui']
      end

      if attributes.key?(:'enable_breakout_rooms')
        self.enable_breakout_rooms = attributes[:'enable_breakout_rooms']
      end

      if attributes.key?(:'enable_knocking')
        self.enable_knocking = attributes[:'enable_knocking']
      end

      if attributes.key?(:'enable_screenshare')
        self.enable_screenshare = attributes[:'enable_screenshare']
      end

      if attributes.key?(:'enable_video_processing_ui')
        self.enable_video_processing_ui = attributes[:'enable_video_processing_ui']
      end

      if attributes.key?(:'enable_chat')
        self.enable_chat = attributes[:'enable_chat']
      end

      if attributes.key?(:'start_video_off')
        self.start_video_off = attributes[:'start_video_off']
      end

      if attributes.key?(:'start_audio_off')
        self.start_audio_off = attributes[:'start_audio_off']
      end

      if attributes.key?(:'owner_only_broadcast')
        self.owner_only_broadcast = attributes[:'owner_only_broadcast']
      end

      if attributes.key?(:'enable_recording')
        self.enable_recording = attributes[:'enable_recording']
      end

      if attributes.key?(:'eject_at_room_exp')
        self.eject_at_room_exp = attributes[:'eject_at_room_exp']
      end

      if attributes.key?(:'eject_after_elapsed')
        self.eject_after_elapsed = attributes[:'eject_after_elapsed']
      end

      if attributes.key?(:'enable_advanced_chat')
        self.enable_advanced_chat = attributes[:'enable_advanced_chat']
      end

      if attributes.key?(:'enable_hidden_participants')
        self.enable_hidden_participants = attributes[:'enable_hidden_participants']
      end

      if attributes.key?(:'enable_mesh_sfu')
        self.enable_mesh_sfu = attributes[:'enable_mesh_sfu']
      end

      if attributes.key?(:'sfu_switchover')
        self.sfu_switchover = attributes[:'sfu_switchover']
      end

      if attributes.key?(:'experimental_optimize_large_calls')
        self.experimental_optimize_large_calls = attributes[:'experimental_optimize_large_calls']
      end

      if attributes.key?(:'lang')
        self.lang = attributes[:'lang']
      end

      if attributes.key?(:'meeting_join_hook')
        self.meeting_join_hook = attributes[:'meeting_join_hook']
      end

      if attributes.key?(:'geo')
        self.geo = attributes[:'geo']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      enable_recording_validator = EnumAttributeValidator.new('String', ["local", "cloud", "raw-tracks", "unknown_default_open_api"])
      return false unless enable_recording_validator.valid?(@enable_recording)
      lang_validator = EnumAttributeValidator.new('String', ["de", "en", "es", "fi", "fr", "it", "jp", "ka", "nl", "no", "pt", "pt-BR", "pl", "ru", "sv", "tr", "user", "unknown_default_open_api"])
      return false unless lang_validator.valid?(@lang)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enable_recording Object to be assigned
    def enable_recording=(enable_recording)
      validator = EnumAttributeValidator.new('String', ["local", "cloud", "raw-tracks", "unknown_default_open_api"])
      unless validator.valid?(enable_recording)
        fail ArgumentError, "invalid value for \"enable_recording\", must be one of #{validator.allowable_values}."
      end
      @enable_recording = enable_recording
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lang Object to be assigned
    def lang=(lang)
      validator = EnumAttributeValidator.new('String', ["de", "en", "es", "fi", "fr", "it", "jp", "ka", "nl", "no", "pt", "pt-BR", "pl", "ru", "sv", "tr", "user", "unknown_default_open_api"])
      unless validator.valid?(lang)
        fail ArgumentError, "invalid value for \"lang\", must be one of #{validator.allowable_values}."
      end
      @lang = lang
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nbf == o.nbf &&
          exp == o.exp &&
          max_participants == o.max_participants &&
          enable_people_ui == o.enable_people_ui &&
          enable_pip_ui == o.enable_pip_ui &&
          enable_emoji_reactions == o.enable_emoji_reactions &&
          enable_hand_raising == o.enable_hand_raising &&
          enable_prejoin_ui == o.enable_prejoin_ui &&
          enable_live_captions_ui == o.enable_live_captions_ui &&
          enable_network_ui == o.enable_network_ui &&
          enable_noise_cancellation_ui == o.enable_noise_cancellation_ui &&
          enable_breakout_rooms == o.enable_breakout_rooms &&
          enable_knocking == o.enable_knocking &&
          enable_screenshare == o.enable_screenshare &&
          enable_video_processing_ui == o.enable_video_processing_ui &&
          enable_chat == o.enable_chat &&
          start_video_off == o.start_video_off &&
          start_audio_off == o.start_audio_off &&
          owner_only_broadcast == o.owner_only_broadcast &&
          enable_recording == o.enable_recording &&
          eject_at_room_exp == o.eject_at_room_exp &&
          eject_after_elapsed == o.eject_after_elapsed &&
          enable_advanced_chat == o.enable_advanced_chat &&
          enable_hidden_participants == o.enable_hidden_participants &&
          enable_mesh_sfu == o.enable_mesh_sfu &&
          sfu_switchover == o.sfu_switchover &&
          experimental_optimize_large_calls == o.experimental_optimize_large_calls &&
          lang == o.lang &&
          meeting_join_hook == o.meeting_join_hook &&
          geo == o.geo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [nbf, exp, max_participants, enable_people_ui, enable_pip_ui, enable_emoji_reactions, enable_hand_raising, enable_prejoin_ui, enable_live_captions_ui, enable_network_ui, enable_noise_cancellation_ui, enable_breakout_rooms, enable_knocking, enable_screenshare, enable_video_processing_ui, enable_chat, start_video_off, start_audio_off, owner_only_broadcast, enable_recording, eject_at_room_exp, eject_after_elapsed, enable_advanced_chat, enable_hidden_participants, enable_mesh_sfu, sfu_switchover, experimental_optimize_large_calls, lang, meeting_join_hook, geo].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Daily.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
