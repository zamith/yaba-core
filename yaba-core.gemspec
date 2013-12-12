# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaba/core/version'

Gem::Specification.new do |spec|
  spec.name          = "yaba-core"
  spec.version       = Yaba::Core::VERSION
  spec.authors       = ["Zamith"]
  spec.email         = ["zamith.28@gmail.com"]
  spec.description   = %q{YABA (Yet Another Blog Application) written from scratch, and following an hexagonal arch approach.}
  spec.summary       = %q{It has entities which are the core of the app, repositories which work as
                          adapters for the database, value objects that represent the actual data of the
                          system and are what is passed around, it will also have use cases (or interactors)
                          and a delivery mechanism (which in a plugin).}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "wisper"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
