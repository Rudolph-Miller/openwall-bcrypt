require "formula"

class Libbcrypt < Formula
  homepage "https://github.com/Rudolph-Miller/openwall-bcrypt"
  url "https://github.com/Rudolph-Miller/openwall-bcrypt/archive/53444382b1f03f41f8757493f26f6eae66320d02.tar.gz"
  version '1.1'
  sha1 "6ad0f93367e7036e4c4c876d44c39cc00bbb584f"
  def install
    system "make", "library"
    lib.install "libbcrypt.#{version}.dylib"
    lib.install_symlink "libbcrypt.#{version}.dylib" => "libbcrypt.dylib"
  end
end
