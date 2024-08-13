begin
  require "certstore/#{RUBY_VERSION[/\d+.\d+/]}/certstore"
rescue LoadError
  require "certstore/certstore"
end
require "certstore/version"
require "certstore/loader"
require "certstore/openssl/loader"

module Certstore
  # Your code goes here...
end
