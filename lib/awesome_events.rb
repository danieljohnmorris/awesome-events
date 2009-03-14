$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# dependancies
require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'rest_client'
  
# lib
require 'util'
require 'upcoming'
require 'upcoming/config'
require 'upcoming/group'
