$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "syndrome/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "syndrome"
  spec.version     = Syndrome::VERSION
  spec.authors     = ["Drew Easley"]
  spec.email       = ["hello@agilesyndro.me"]
  spec.homepage    = "https://developer.agilesyndro.me/opensource"
  spec.summary     = "Need a Rails Engine to make Rails easier? Tada!"
  spec.description = "Open source implentation of a Rails Engine, complete with Devise"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency "sqlite3"
end
