require "rubygems"
require "bundler/setup"

require "mongoid"
require "mongoid/core_ext"

require "mongoid/virtual_multi_parameter_attributes"

require "date"
require "rspec"

Mongoid.configure do |config|
  config.master = Mongo::Connection.new.db("mongoid_virtual_multi_parameter_attributes_test")
  config.use_utc = false
  config.use_activesupport_time_zone = true
end

Dir["#{File.dirname(__FILE__)}/models/*.rb"].each { |f| require f }

RSpec.configure do |c|
  c.before(:each) do
    ::Time.zone = "UTC"
    Mongoid.master.collections.select {|c| c.name !~ /system/ }.each(&:remove)
  end
end
