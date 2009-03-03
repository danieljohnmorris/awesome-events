$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# dependancies
require 'rubygems'
require 'open-uri'
require 'hpricot'

# lib
require 'util/util'
require 'upcoming/group'