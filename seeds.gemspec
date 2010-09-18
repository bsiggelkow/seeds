# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'seeds/version'

Gem::Specification.new do |s|
  s.name        = "seeds"
  s.version     = Seeds::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Bill Siggelkow']
  s.email       = ['bsiggelkow@mac.com']
  s.summary     = "Cucumber steps"
  s.description = "Cucumber steps"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_runtime_dependency "cucumber"
  s.add_runtime_dependency "capybara"

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler", ">= 1.0.0.rc.5"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}.map{|x| x.sub(/^bin\//,'')}
  s.require_path = 'lib'
end
