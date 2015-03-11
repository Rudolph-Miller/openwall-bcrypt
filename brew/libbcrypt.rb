require "formula"

class Libbcrypt < Formula
  homepage "https://github.com/Rudolph-Miller/openwall-bcrypt"
  url "https://github.com/Rudolph-Miller/openwall-bcrypt/archive/master.tar.gz"
  version '1.1'
  sha1 "1f2c1b0e64c54af4d4f0da86ff89212b9bd53d70"
  def install
    system "make", "library"
    lib.install "libbcrypt.#{version}.dylib"
    lib.install_symlink "libbcrypt.#{version}.dylib" => "libbcrypt.dylib"
  end
end
