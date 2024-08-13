require 'socket'
require 'openssl'
require 'certstore'

cert_store = OpenSSL::X509::Store.new
loader = Certstore::OpenSSL::Loader.new(cert_store, "Trust", enterprise: true)

File.open(File.join(__dir__, "..", "./test/data/ca_cert.pem")) do |file|
  x509_obj = OpenSSL::X509::Certificate.new(file.read)
  thumbprint = OpenSSL::Digest::SHA1.new(x509_obj.to_der).to_s
  loader.add_certificate(file)
  loader.delete_certificate(thumbprint)
end
