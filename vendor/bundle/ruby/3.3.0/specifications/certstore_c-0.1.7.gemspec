# -*- encoding: utf-8 -*-
# stub: certstore_c 0.1.7 ruby lib
# stub: ext/certstore/extconf.rb

Gem::Specification.new do |s|
  s.name = "certstore_c".freeze
  s.version = "0.1.7".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "homepage_uri" => "https://github.com/fluent-plugins-nursery/certstore_c", "source_code_uri" => "https://github.com/fluent-plugins-nursery/certstore_c" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Hiroshi Hatake".freeze, "Takuro Ashie".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-05-15"
  s.description = "Windows CertStore loader and ruby-openssl extension for TLS connection.".freeze
  s.email = ["cosmo0920.wp@gmail.com".freeze, "ashie@clear-code.com".freeze]
  s.extensions = ["ext/certstore/extconf.rb".freeze]
  s.files = ["ext/certstore/extconf.rb".freeze]
  s.homepage = "https://github.com/fluent-plugins-nursery/certstore_c".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Windows CertStore loader and ruby-openssl extension for TLS connection.".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 1.16".freeze, "< 3".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12.0".freeze])
  s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.7.2".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.3.3".freeze])
end
