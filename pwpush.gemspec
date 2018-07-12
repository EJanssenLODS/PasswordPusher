# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'pwpush/version'

Gem::Specification.new do |spec|
  spec.name          = "pwpush"
  spec.version       = '0.1.0'
  spec.authors       = ["Peter Giacomo Lombardo"]
  spec.email         = ["evan.janssen@learnondemandsystems.com"]

  spec.summary       = %q{PasswordPusher is an opensource Ruby on Rails application to communicate passwords over the web.}
  spec.description   = %q{Links to passwords expire after a certain number of views and/or time has passed. Hosted at pwpush.com but you can also easily run your own instance internally or on Heroku with just a few steps.}
  spec.homepage      = "https://pwpush.com"
  spec.license       = "GPLv3"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "https://rubygems.org"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
