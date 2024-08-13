# -*- encoding: utf-8 -*-
# stub: fluentd 1.17.0 x64-mingw-ucrt lib

Gem::Specification.new do |s|
  s.name = "fluentd".freeze
  s.version = "1.17.0".freeze
  s.platform = "x64-mingw-ucrt".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sadayuki Furuhashi".freeze]
  s.date = "2024-04-30"
  s.description = "Fluentd is an open source data collector designed to scale and simplify log management. It can collect, process and ship many kinds of data in near real-time.".freeze
  s.email = ["frsyuki@gmail.com".freeze]
  s.executables = ["fluent-binlog-reader".freeze, "fluent-ca-generate".freeze, "fluent-cap-ctl".freeze, "fluent-cat".freeze, "fluent-ctl".freeze, "fluent-debug".freeze, "fluent-gem".freeze, "fluent-plugin-config-format".freeze, "fluent-plugin-generate".freeze, "fluentd".freeze]
  s.files = ["bin/fluent-binlog-reader".freeze, "bin/fluent-ca-generate".freeze, "bin/fluent-cap-ctl".freeze, "bin/fluent-cat".freeze, "bin/fluent-ctl".freeze, "bin/fluent-debug".freeze, "bin/fluent-gem".freeze, "bin/fluent-plugin-config-format".freeze, "bin/fluent-plugin-generate".freeze, "bin/fluentd".freeze]
  s.homepage = "https://www.fluentd.org/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.4.13".freeze
  s.summary = "Fluentd event collector".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<msgpack>.freeze, [">= 1.3.1".freeze, "< 2.0.0".freeze])
  s.add_runtime_dependency(%q<yajl-ruby>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<cool.io>.freeze, [">= 1.4.5".freeze, "< 2.0.0".freeze])
  s.add_runtime_dependency(%q<serverengine>.freeze, [">= 2.3.2".freeze, "< 3.0.0".freeze])
  s.add_runtime_dependency(%q<http_parser.rb>.freeze, [">= 0.5.1".freeze, "< 0.9.0".freeze])
  s.add_runtime_dependency(%q<sigdump>.freeze, ["~> 0.2.5".freeze])
  s.add_runtime_dependency(%q<tzinfo>.freeze, [">= 1.0".freeze, "< 3.0".freeze])
  s.add_runtime_dependency(%q<tzinfo-data>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<strptime>.freeze, [">= 0.2.4".freeze, "< 1.0.0".freeze])
  s.add_runtime_dependency(%q<webrick>.freeze, ["~> 1.4".freeze])
  s.add_runtime_dependency(%q<base64>.freeze, ["~> 0.2".freeze])
  s.add_runtime_dependency(%q<csv>.freeze, ["~> 3.2".freeze])
  s.add_runtime_dependency(%q<drb>.freeze, ["~> 2.2".freeze])
  s.add_runtime_dependency(%q<win32-service>.freeze, ["~> 2.3.0".freeze])
  s.add_runtime_dependency(%q<win32-ipc>.freeze, ["~> 0.7.0".freeze])
  s.add_runtime_dependency(%q<win32-event>.freeze, ["~> 0.6.3".freeze])
  s.add_runtime_dependency(%q<certstore_c>.freeze, ["~> 0.1.7".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<flexmock>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<parallel_tests>.freeze, ["~> 0.15.3".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7".freeze])
  s.add_development_dependency(%q<rr>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<test-unit-rr>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<oj>.freeze, [">= 2.14".freeze, "< 4".freeze])
  s.add_development_dependency(%q<async>.freeze, ["~> 1.23".freeze])
  s.add_development_dependency(%q<async-http>.freeze, [">= 0.50.0".freeze])
  s.add_development_dependency(%q<aws-sigv4>.freeze, ["~> 1.8".freeze])
  s.add_development_dependency(%q<aws-sdk-core>.freeze, ["~> 3.191".freeze])
  s.add_development_dependency(%q<rexml>.freeze, ["~> 3.2".freeze])
end
