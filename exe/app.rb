#!/usr/bin/env ruby

$: << File.expand_path(__FILE__ + "/../../lib")

require 'sinatra'
require 'greet'

get "/" do
  "#{greet "World"} [RUBY #{RUBY_VERSION}]"
end
