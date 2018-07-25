class Skit < Formula
  homepage "https://github.com/keith/skit"
  head "https://github.com/keith/skit.git"
  url "https://github.com/keith/skit/archive/0.3.0.tar.gz"
  sha256 "aa017e49c0e18bb7142675d34d6abe6d94cff89849622282474d32d84ba4217b"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{ bin }"
  end
end
