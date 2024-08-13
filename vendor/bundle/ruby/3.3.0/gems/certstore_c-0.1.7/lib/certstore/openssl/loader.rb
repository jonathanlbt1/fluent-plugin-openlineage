#
# certstore_c
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

require "certstore/certstore"
require "openssl"
require "logger"

module Certstore
  module OpenSSL
    class Loader
      attr_reader :cert_store

      def initialize(log = Logger.new(STDOUT), cert_store, store_name, enterprise: true)
        @log = log
        @cert_store = cert_store
        @store_name = store_name
        @loader = Certstore::Loader.new(@store_name, enterprise: enterprise)
      end

      def load_cert_store
        @loader.each do |pem|
          begin
            x509_certificate_obj = ::OpenSSL::X509::Certificate.new(pem)
            valid_duration?(x509_certificate_obj)
            @cert_store.add_cert(x509_certificate_obj)
          rescue ::OpenSSL::X509::StoreError => e # continue to read
            @log.warn "failed to load certificate(thumbprint: #{OpenSSL::Digest::SHA1.new(x509_certificate_obj.to_der).to_s}) from certstore", error: e
          end
        end
      end

      def cleanup_thumbprint(thumbprint)
        thumbprint.gsub(/[^A-Za-z0-9]/, "")
      end

      def get_certificate(thumbprint)
        thumbprint = cleanup_thumbprint(thumbprint)
        ::OpenSSL::X509::Certificate.new(@loader.find_cert(thumbprint))
      end

      def export_pkcs12(thumbprint, password)
        thumbprint = cleanup_thumbprint(thumbprint)
        pkcs12 = @loader.export_pfx(thumbprint, password)
        ::OpenSSL::PKCS12.new(pkcs12, password)
      end

      def valid_duration?(x509_obj)
        x509_obj.not_before < Time.now.utc && x509_obj.not_after > Time.now.utc
      end

      def add_certificate(cert_path)
        File.readable?(cert_path)
        File.open(cert_path) do |file|
          @loader.add_cert(::OpenSSL::X509::Certificate.new(file.read).to_der)
        end
      end

      def delete_certificate(thumbprint)
        thumbprint = cleanup_thumbprint(thumbprint)
        @loader.delete_cert(thumbprint)
      end
    end
  end
end
