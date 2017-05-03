class Skit < Formula
  homepage "https://github.com/keith/skit"
  head "https://github.com/keith/skit.git"
  url "https://github.com/keith/skit/archive/0.1.2.tar.gz"
  sha256 "84b7e971e6d2ae9f6e12e09d7e78bcfc9e992f909369152a2cb648ab930a015b"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{ bin }"
  end
end
