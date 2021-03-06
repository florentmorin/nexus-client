# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nexus_client/version'

Gem::Specification.new do |spec|
  spec.name          = "nexus_client"
  spec.version       = Nexus::Client::VERSION
  spec.authors       = ["Jason Thigpen", "Corey Osman"]
  spec.email         = ["darwin@senet.us", "corey@logicminds.biz"]
  spec.description   = %q{Simple Ruby client for dealing with Nexus}
  spec.summary       = %q{Simple Nexus Ruby Client}
  spec.homepage      = "https://github.com/logicminds/nexus-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "trollop", "= 2.0"
  spec.add_runtime_dependency "json" if Gem.ruby_version < Gem::Version.new('2.0')
  spec.add_runtime_dependency "typhoeus", "= 0.6.9"
  spec.add_runtime_dependency "filesize", "= 0.0.3"
  spec.add_development_dependency "sqlite3", '~> 1.3'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 2.99"
  spec.add_development_dependency "fakefs", "= 0.5"

end
