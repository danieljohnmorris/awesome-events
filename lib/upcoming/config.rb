module AwesomeEvents
  module Upcoming
    class Config
      attr_reader :api_key, :token
    
      def initialize(options = {})
        @api_key = options[:api_key] if options[:api_key]
        @token = options[:token] if options[:token]
        return true if !options.empty? and (@api_key or @token)
        false
      end
    end
  end
end
