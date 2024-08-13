require 'socket'
require 'openssl'
require 'certstore'

if (ARGV.length < 3)
  puts "host, port and store_name must be specified"
  exit 1
end

host = ARGV[0]
port = ARGV[1]
store_name = ARGV[2]
thumbprint = ARGV[3]

cert_store = OpenSSL::X509::Store.new
loader = Certstore::OpenSSL::Loader.new(cert_store, store_name)
loader.load_cert_store
cert_store = loader.cert_store

socket = TCPSocket.open(host,port)
ssl_context = OpenSSL::SSL::SSLContext.new()
ssl_context.set_params({})
ssl_context.cert_store = cert_store
ssl_context.verify_mode = OpenSSL::SSL::VERIFY_PEER
ssl_context.cert = loader.get_certificate(thumbprint) if thumbprint
ssl_context.ssl_version = :TLSv1_2
ssl_socket = OpenSSL::SSL::SSLSocket.new(socket, ssl_context)
ssl_socket.sync_close = true
ssl_socket.connect

now = Time.now
ssl_socket.puts("[\"test.tag\", #{now.to_i}, {\"message\": \"Hi!!!!\"}]")
ssl_socket.close
