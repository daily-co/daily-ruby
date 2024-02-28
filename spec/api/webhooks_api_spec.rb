=begin
#Daily API

#The Daily REST API offers the ability to manage the following:  - Overall Domain Configuration - Individual Room creation and config management  - Meeting token creation and validation - Recording and compositing management  - Meeting analytics - Logs and metrics - Real-time presence  Please reach out to help@daily.co if we can help with anything

The version of the OpenAPI document: 1.1.1
Contact: help@daily.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Daily::WebhooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @api_instance = Daily::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@api_instance).to be_instance_of(Daily::WebhooksApi)
    end
  end

  # unit tests for create_webhook
  # /webhooks
  # Create a webhook
  # @param [Hash] opts the optional parameters
  # @option opts [PostWebhook] :post_webhook 
  # @return [Webhook]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_webhook
  # webhooks/:id
  # Delete a webhook
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhook_config
  # webhooks/:id
  # Get info about a webhook
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Array<Webhook>]
  describe 'get_webhook_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhooks
  # /webhooks
  # Get Webhooks
  # @param [Hash] opts the optional parameters
  # @return [Array<Webhook>]
  describe 'get_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_webhook_config
  # webhooks/:id
  # Update webhook config
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateWebhook] :update_webhook 
  # @return [Webhook]
  describe 'update_webhook_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end