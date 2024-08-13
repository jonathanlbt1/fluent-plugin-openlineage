
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "certstore/version"

Gem::Specification.new do |spec|
  spec.name          = "certstore_c"
  spec.version       = Certstore::VERSION
  spec.authors       = ["Hiroshi Hatake", "Takuro Ashie"]
  spec.email         = ["cosmo0920.wp@gmail.com", "ashie@clear-code.com"]

  spec.summary       = %q{Windows CertStore loader and ruby-openssl extension for TLS connection.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/fluent-plugins-nursery/certstore_c"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/fluent-plugins-nursery/certstore_c"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.license = "Apache-2.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  spec.extensions = ["ext/certstore/extconf.rb"]

  spec.add_development_dependency "bundler", [">= 1.16", "< 3"]
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rake-compiler", "~> 1.0"
  spec.add_development_dependency "rake-compiler-dock", "~> 0.7.2"
  spec.add_development_dependency "test-unit", "~> 3.3.3"
end
