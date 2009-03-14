module AwesomeEvents
  module Upcoming
    class Group
      attr_reader :id, :config
    
      def initialize(options = {})
        @id = options[:id] if options[:id]
        @config = options[:config] if options[:config]
      end
    
      def fetch_events(options = {:tense => :upcoming})
        url = "#{UPCOMING_API_URL}?api_key=#{@config.api_key}&method=group.getEvents&group_id=#{@id}"
        url << "&show_past=1" if options[:tense] == :past  
        puts url
        RestClient.get(url)
      end
    end
  end
end