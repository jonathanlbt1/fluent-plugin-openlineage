# -*- encoding: utf-8 -*-
# stub: thermite 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "thermite".freeze
  s.version = "0.13.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Lee".freeze]
  s.date = "2017-10-05"
  s.description = "A Rake-based helper for building and distributing Rust-based Ruby extensions".freeze
  s.email = "malept@users.noreply.github.com".freeze
  s.homepage = "https://github.com/malept/thermite".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.1".freeze
  s.summary = "Rake helpers for Rust+Ruby".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rake>.freeze, [">= 10".freeze])
  s.add_runtime_dependency(%q<minitar>.freeze, ["~> 0.5".freeze])
  s.add_runtime_dependency(%q<tomlrb>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9".freeze])
  s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.41".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
