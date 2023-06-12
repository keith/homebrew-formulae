class Ld64Lld < Formula
  homepage "https://github.com/keith/ld64.lld"
  url "https://github.com/keith/ld64.lld/releases/download/4-6-23/ld64.tar.xz"
  sha256 "b7f5c7aa573340eb85ca0895e2f689ee881eeb99c039a6d5eb2dafef53da4f28"

  def install
    bin.install "ld64.lld"
  end
end
