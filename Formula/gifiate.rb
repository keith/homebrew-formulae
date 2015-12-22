class Gifiate < Formula
  homepage "https://github.com/keith/gifiate"
  head "https://github.com/keith/gifiate.git"
  url "https://github.com/keith/gifiate/archive/0.1.0.tar.gz"
  sha256 "41a461518ae74cfa8223eb2802fb563cf152bb6d0d8f43783e744d6684133e04"

  depends_on "ffmpeg"
  depends_on "gifsicle"
  depends_on "youtube-dl"

  def install
    bin.install "gifiate"
  end
end
