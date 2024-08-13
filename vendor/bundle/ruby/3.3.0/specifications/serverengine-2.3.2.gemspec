# -*- encoding: utf-8 -*-
# stub: serverengine 2.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "serverengine".freeze
  s.version = "2.3.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sadayuki Furuhashi".freeze]
  s.date = "2023-03-14"
  s.description = "A framework to implement robust multiprocess servers like Unicorn".freeze
  s.email = ["frsyuki@gmail.com".freeze]
  s.homepage = "https://github.com/fluent/serverengine".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.4.1".freeze
  s.summary = "ServerEngine - multiprocess server framework".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<sigdump>.freeze, ["~> 0.2.2".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12.0".freeze])
  s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.5.0".freeze])
  s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9.4".freeze])
  s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9.5".freeze])
  s.add_development_dependency(%q<rr>.freeze, ["~> 3.1".freeze])
end
