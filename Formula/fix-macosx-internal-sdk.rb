class FixMacosxInternalSdk < Formula
  homepage "https://github.com/keith/fix-macosx-internal-sdk"
  head "https://github.com/keith/fix-macosx-internal-sdk.git"
  url "https://github.com/keith/fix-macosx-internal-sdk/archive/refs/tags/0.1.2.tar.gz"
  sha256 "d6791fbe52325bab31ceb088c58655f584682091802ff093cd9fa6c57303b13b"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
