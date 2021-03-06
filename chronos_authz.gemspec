$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "chronos_authz/version"

Gem::Specification.new do |s|
  s.name        = "chronos_authz"
  s.version     = ChronosAuthz::VERSION
  s.authors     = ["Marianne Angelie del Mundo", "Rodette Pedro", "JR Respino", "Jayson Uy"]
  s.email       = %w(marianne@chronoscloud.com rodette@chronoscloud.com jr@chronoscloud.com jayson@chronoscloud.com)
  s.homepage    = "https://github.com/chronoscloud/chronos-authz"
  s.summary     = "A minimal and declarative authorization layer"
  s.description = "A declarative authorization Rack middleware that supports custom authorization logic on a per-resource basis"
  s.license     = 'N/A'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "railties", ">= 4.2"
  s.add_dependency "request_store"
  s.add_dependency "activesupport"
  s.required_ruby_version = ">= 2.4"

  s.add_development_dependency "rake", ">= 11.3.0"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "simplecov-console"
end
