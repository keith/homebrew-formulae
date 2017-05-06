class Skit < Formula
  homepage "https://github.com/keith/skit"
  head "https://github.com/keith/skit.git"
  url "https://github.com/keith/skit/archive/0.2.0.tar.gz"
  sha256 "a1e2d13ded95f179dafc3d4d0baf40f3779ddb61d5c07a84d3ab277874f9080c"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{ bin }"
  end
end
