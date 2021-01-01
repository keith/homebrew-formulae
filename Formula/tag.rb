class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.5.2/tag.tar.gz"
  sha256 "a4c86e953cb9ef037ae7884c0b0b0054e3288581efaaaee70ae5eb9ea9a9d8ae"

  def install
    bin.install "tag"
  end
end
