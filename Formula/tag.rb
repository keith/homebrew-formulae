class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.1.0/tag.tar.gz"
  sha256 "e539837e3b425550eeb649c892c0f668fad0e39c5dccea18aaa9b4097e2a0d36"
  version "0.1.0"

  def install
    bin.install "tag"
  end
end
