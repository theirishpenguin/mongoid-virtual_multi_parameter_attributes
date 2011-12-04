# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid/virtual_multi_parameter_attributes/version"

Gem::Specification.new do |s|
  s.name        = 'mongoid-virtual_multi_parameter_attributes'
  s.version     = Mongoid::VirtualMultiParameterAttributes::VERSION
  s.date        = '2011-12-04'
  s.summary     = "Allows virtual multi-parameter attributes in Mongoid"
  s.description = "Allows you to define and use virtual multi-parameter attributes in your Mongoid models"
  s.authors     = ["Declan McGrath"]
  s.email       = 'declan@toothsuite.com'
  s.files       = Dir.glob("{lib}/**/*") + %w(LICENSE README.md)
  s.test_files  = Dir.glob("{spec}/**/*")

  s.require_paths = ["lib"]

  s.add_dependency("mongoid", "~> 2.3.4")
  s.add_development_dependency("bson_ext", ">= 1.3")
  s.add_development_dependency("rake", "~> 0.9")
  s.add_development_dependency("rspec", "~> 2.6")

  s.homepage    = 'http://rubygems.org/gems/mongoid-virtual_multi_parameter_attributes'
end
