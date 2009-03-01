# dependancies
require 'rubygems'
require 'open-uri'
require 'hpricot'

# lib
require 'upcoming/group'

include AwesomeEvents

module AwesomeEvents
  module Util
    def self.get(url)
      doc = Hpricot(open(url))
    end 
  end
end