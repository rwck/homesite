require 'rubygems'
require 'bundler/setup'
require 'puma'

require_relative 'homesite'

run HomeSite::SinatraApp
