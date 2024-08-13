# -*- encoding: utf-8 -*-
# stub: strptime 0.2.5 ruby lib
# stub: ext/strptime/extconf.rb

Gem::Specification.new do |s|
  s.name = "strptime".freeze
  s.version = "0.2.5".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["NARUSE, Yui".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-09-26"
  s.description = "a fast strptime/strftime engine which uses VM.".freeze
  s.email = ["naruse@airemix.jp".freeze]
  s.extensions = ["ext/strptime/extconf.rb".freeze]
  s.files = ["ext/strptime/extconf.rb".freeze]
  s.homepage = "https://github.com/nurse/strptime".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "a fast strptime/strftime engine.".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake-compiler-dock>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<yard>.freeze, [">= 0".freeze])
end
