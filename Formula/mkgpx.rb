class Mkgpx < Formula
  homepage "https://github.com/keith/mkgpx"
  head "https://github.com/keith/mkgpx.git"
  url "https://github.com/keith/mkgpx/releases/download/0.1.0/mkgpx.tar.gz"
  sha256 "778cd3836f14f19d67b2fe51411c4b1c85aefe59ce670319780b0a4485ec5592"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "mkgpx"
    end
  end
end
