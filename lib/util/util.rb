module AwesomeEvents
  module Util
    def self.get(url)
      doc = Hpricot(open(url))
    end 
  end
end