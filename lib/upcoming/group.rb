module AwesomeEvents
  module Upcoming
    class Group
    
      def initialize(options = {})
        @id = options[:id] if options[:id]
        @api_key = options[:api_key] if options[:api_key]
      end
    
      def fetch_events(options = {:tense => :upcoming})
        url = "http://upcoming.yahooapis.com/services/rest/?api_key=#{@api_key}&method=group.getEvents&group_id=#{@id}"
        url << "&show_past=1" if options[:tense] == :past
  
        AwesomeEvents::Util.get(url)
      end
    end
  end
end