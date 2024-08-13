require "mkmf"
require "rbconfig"

if RbConfig::CONFIG['host_os'] =~ /mingw/
  $CFLAGS << ' -fno-omit-frame-pointer'
end

libdir = RbConfig::CONFIG["libdir"]
includedir = RbConfig::CONFIG["includedir"]

dir_config("certstore", includedir, libdir)

have_library("crypt32")
have_func("PFXExportCertStoreEx", "Wincrypt.h")

$LDFLAGS << " -lcrypt32"
$CFLAGS << " -Wall -std=c99 -fPIC -fms-extensions "
# $CFLAGS << " -g -O0"

create_makefile("certstore/certstore")
