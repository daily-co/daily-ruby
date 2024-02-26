# -*- encoding: utf-8 -*-

=begin
#Daily

#The official library for communicating with the Daily REST API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "daily-ruby/version"

Gem::Specification.new do |s|
  s.name        = "daily-ruby"
  s.version     = Daily::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daily"]
  s.email       = ["help@daily.co"]
  s.homepage    = "https://www.github.com/daily-co/daily-ruby"
  s.summary     = "The official Daily API Ruby client"
  s.description = "The official Daily API Ruby client"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
