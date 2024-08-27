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
  class DomainApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get domain configuration
    # Get top-level configuration of your domain
    # @param [Hash] opts the optional parameters
    # @return [GetDomainConfig200Response]
    def get_domain_config(opts = {})
      data, _status_code, _headers = get_domain_config_with_http_info(opts)
      data
    end

    # Get domain configuration
    # Get top-level configuration of your domain
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetDomainConfig200Response, Integer, Hash)>] GetDomainConfig200Response data, response status code and response headers
    def get_domain_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainApi.get_domain_config ...'
      end
      # resource path
      local_var_path = '/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDomainConfig200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sec0']

      new_options = opts.merge(
        :operation => :"DomainApi.get_domain_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DomainApi#get_domain_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set domain configuration
    # Set top-level configuration options for your domain
    # @param [Hash] opts the optional parameters
    # @option opts [Domain] :domain 
    # @return [nil]
    def set_domain_config(opts = {})
      set_domain_config_with_http_info(opts)
      nil
    end

    # Set domain configuration
    # Set top-level configuration options for your domain
    # @param [Hash] opts the optional parameters
    # @option opts [Domain] :domain 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def set_domain_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainApi.set_domain_config ...'
      end
      # resource path
      local_var_path = '/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'domain'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sec0']

      new_options = opts.merge(
        :operation => :"DomainApi.set_domain_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DomainApi#set_domain_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
