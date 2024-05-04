#!/usr/bin/env ruby

$: << File.expand_path(__FILE__ + "/../../lib")

require 'sinatra'
require 'greet'

get "/" do
  "<h1>#{greet "World"} [RUBY #{RUBY_VERSION}] [Sinatra #{Sinatra::VERSION}]</h1>"
end
