# -*- encoding: utf-8 -*-
# stub: win32-service 2.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "win32-service".freeze
  s.version = "2.3.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze, "Park Heesob".freeze]
  s.date = "2021-04-07"
  s.description = "    The win32-service library provides a Ruby interface to services on\n    MS Windows. You can create new services, or control, configure and\n    inspect existing services.\n\n    In addition, you can create a pure Ruby service by using the Daemon\n    class that is included as part of the library.\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.homepage = "https://github.com/chef/win32-service".freeze
  s.licenses = ["Artistic-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "An interface for MS Windows services".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<ffi>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<ffi-win32-extensions>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec-core>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec-expectations>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec-mocks>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<win32-security>.freeze, [">= 0".freeze])
end
