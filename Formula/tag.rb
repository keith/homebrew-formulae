class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.5.1/tag.tar.gz"
  sha256 "55e0b2dad56c9fbfc37e0631e3b9082e086c72b9b6c3b071a359b42ec36b1aad"

  def install
    bin.install "tag"
  end
end
