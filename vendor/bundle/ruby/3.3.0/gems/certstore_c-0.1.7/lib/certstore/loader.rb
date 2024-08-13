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
module Certstore
  class Loader
    alias_method :initialize_raw, :initialize

    class InvalidStoreNameError < StandardError; end

    def initialize(store_name, enterprise: true)
      unless store_name && valid_logical_store_list.include?(store_name.upcase)
        raise InvalidStoreNameError, "'#{store_name}' is not a valid logical store name"
      end
      initialize_raw(store_name, enterprise)
    end

    def valid_logical_store_list
      %w[MY CA ROOT AUTHROOT DISALLOWED SPC TRUST TRUSTEDPEOPLE TRUSTEDPUBLISHER CLIENTAUTHISSUER TRUSTEDDEVICES SMARTCARDROOT WEBHOSTING REMOTE\ DESKTOP]
    end
  end
end
