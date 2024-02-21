# require 'daily-ruby/base/client_base'

module Daily
  module REST
    ##
    # A client for accessing the Daily API.
    class Client < ClientBase
      ##
      # Provide a user friendly representation
      def to_s
        "#<Daily::REST::Client #{@account_sid}>"
      end
    end
  end
end
