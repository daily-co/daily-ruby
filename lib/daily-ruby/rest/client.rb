# require 'daily-ruby/base/client_base'

module Daily
  module REST
    ##
    # A client for accessing the Daily API.
    class Client
      attr_accessor :api_key, :domain

      def initialize(api_key = nil, domain = nil)
        @api_key = api_key || Daily.api_key
        @domain = domain || Daily.domain
      end

      def rooms
        # test
      end

      def meeting_tokens
        # test
      end

      ##
      # Provide a user friendly representation
      def to_s
        "#<Daily::REST::Client #{@account_sid}>"
      end
    end
  end
end
