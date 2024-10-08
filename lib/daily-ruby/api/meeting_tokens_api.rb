=begin
#Daily API

#The Daily REST API offers the ability to manage the following:  - Overall Domain Configuration - Individual Room creation and config management  - Meeting token creation and validation - Recording and compositing management  - Meeting analytics - Logs and metrics - Real-time presence  Please reach out to help@daily.co if we can help with anything

The version of the OpenAPI document: 1.1.1
Contact: help@daily.co
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module Daily
  class MeetingTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # meeting-tokens
    # Create a meeting token
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMeetingTokenRequest] :create_meeting_token_request 
    # @return [CreateMeetingToken200Response]
    def create_meeting_token(opts = {})
      data, _status_code, _headers = create_meeting_token_with_http_info(opts)
      data
    end

    # meeting-tokens
    # Create a meeting token
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMeetingTokenRequest] :create_meeting_token_request 
    # @return [Array<(CreateMeetingToken200Response, Integer, Hash)>] CreateMeetingToken200Response data, response status code and response headers
    def create_meeting_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MeetingTokensApi.create_meeting_token ...'
      end
      # resource path
      local_var_path = '/meeting-tokens'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_meeting_token_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateMeetingToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sec0']

      new_options = opts.merge(
        :operation => :"MeetingTokensApi.create_meeting_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MeetingTokensApi#create_meeting_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # meeting-tokens/:meeting_token
    # Validate meeting tokens
    # @param meeting_token [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :ignore_nbf Ignore the &#x60;nbf&#x60; in a JWT, if given
    # @return [ValidateMeetingToken200Response]
    def validate_meeting_token(meeting_token, opts = {})
      data, _status_code, _headers = validate_meeting_token_with_http_info(meeting_token, opts)
      data
    end

    # meeting-tokens/:meeting_token
    # Validate meeting tokens
    # @param meeting_token [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :ignore_nbf Ignore the &#x60;nbf&#x60; in a JWT, if given
    # @return [Array<(ValidateMeetingToken200Response, Integer, Hash)>] ValidateMeetingToken200Response data, response status code and response headers
    def validate_meeting_token_with_http_info(meeting_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MeetingTokensApi.validate_meeting_token ...'
      end
      # verify the required parameter 'meeting_token' is set
      if @api_client.config.client_side_validation && meeting_token.nil?
        fail ArgumentError, "Missing the required parameter 'meeting_token' when calling MeetingTokensApi.validate_meeting_token"
      end
      # resource path
      local_var_path = '/meeting-tokens/{meeting_token}'.sub('{' + 'meeting_token' + '}', CGI.escape(meeting_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ignoreNbf'] = opts[:'ignore_nbf'] if !opts[:'ignore_nbf'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ValidateMeetingToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sec0']

      new_options = opts.merge(
        :operation => :"MeetingTokensApi.validate_meeting_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MeetingTokensApi#validate_meeting_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
