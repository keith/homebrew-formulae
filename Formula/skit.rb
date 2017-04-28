class Skit < Formula
  homepage "https://github.com/keith/skit"
  head "https://github.com/keith/skit.git"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{ bin }"
  end
end
