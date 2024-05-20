#!/usr/bin/env ruby

$: << File.expand_path(__FILE__ + "/../../lib")

require 'sinatra'
require 'greet'

COUNT_FILE = "/data/count"

def ensure_data_directory
  unless Dir.exist?("/data")
    FileUtils.mkdir_p("/data")
  end
end

def read_count
  ensure_data_directory

  unless File.exist?(COUNT_FILE)
    File.write(COUNT_FILE, "0")
  end

  count = File.read(COUNT_FILE).to_i
  count = 0 if count.nil? || count < 0
  count
end

def update_count(count)
  File.write(COUNT_FILE, count.to_s)
end

get "/" do
  count = read_count
  update_count(count + 1)
  "<h1>#{greet "World"} [RUBY #{RUBY_VERSION}] [Sinatra #{Sinatra::VERSION}]</h1>
   <h2>The current count is: #{count}</h2>"
end
