# -*- encoding: utf-8 -*-
# stub: win32-ipc 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "win32-ipc".freeze
  s.version = "0.7.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze, "Park Heesob".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MREwDwYDVQQDDAhkamJl\ncmc5NjEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTE1MDkwMjIwNDkxOFoXDTE2MDkwMTIwNDkxOFowPzERMA8GA1UEAwwIZGpi\nZXJnOTYxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMyTkvXqRp6hLs9eoJOS\nHmi8kRYbq9Vkf15/hMxJpotYMgJVHHWrmDcC5Dye2PbnXjTkKf266Zw0PtT9h+lI\nS3ts9HO+vaCFSMwFFZmnWJSpQ3CNw2RcHxjWkk9yF7imEM8Kz9ojhiDXzBetdV6M\ngr0lV/alUr7TNVBDngbXEfTWscyXh1qd7xZ4EcOdsDktCe5G45N/o3662tPQvJsi\nFOF0CM/KuBsa/HL1/eoEmF4B3EKIRfTHrQ3hu20Kv3RJ88QM4ec2+0dd97uX693O\nzv6981fyEg+aXLkxrkViM/tz2qR2ZE0jPhHTREPYeMEgptRkTmWSKAuLVWrJEfgl\nDtkCAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFEwe\nnn6bfJADmuIDiMSOzedOrL+xMB0GA1UdEQQWMBSBEmRqYmVyZzk2QGdtYWlsLmNv\nbTAdBgNVHRIEFjAUgRJkamJlcmc5NkBnbWFpbC5jb20wDQYJKoZIhvcNAQEFBQAD\nggEBAHmNOCWoDVD75zHFueY0viwGDVP1BNGFC+yXcb7u2GlK+nEMCORqzURbYPf7\ntL+/hzmePIRz7i30UM//64GI1NLv9jl7nIwjhPpXpf7/lu2I9hOTsvwSumb5UiKC\n/sqBxI3sfj9pr79Wpv4MuikX1XPik7Ncb7NPsJPw06Lvyc3Hkg5X2XpPtLtS+Gr2\nwKJnmzb5rIPS1cmsqv0M9LPWflzfwoZ/SpnmhagP+g05p8bRNKjZSA2iImM/GyYZ\nEJYzxdPOrx2n6NYR3Hk+vHP0U7UBSveI6+qx+ndQYaeyCn+GRX2PKS9h66YF/Q1V\ntGSHgAmcLlkdGgan182qsE/4kKM=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2016-06-23"
  s.description = "    The win32-ipc library provides the Win32::IPC class. This is meant to\n    serve as an abstract base class for other IPC related libraries for MS\n    Windows, such as win32-semaphore, win32-event, and so on.\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.extra_rdoc_files = ["README".freeze, "CHANGES".freeze, "MANIFEST".freeze]
  s.files = ["CHANGES".freeze, "MANIFEST".freeze, "README".freeze]
  s.homepage = "http://github.com/djberg96/win32-ipc".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "An abstract base class for Windows synchronization objects.".freeze

  s.installed_by_version = "3.5.16".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<ffi>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, [">= 0".freeze])
end
