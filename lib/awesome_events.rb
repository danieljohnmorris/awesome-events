$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

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