class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.6.1/tag.tar.gz"
  sha256 "e5c97b1ebce6424450c65d34fc8878ba60e04fd00061a762e805a792c049a6ac"

  def install
    bin.install "tag"
  end
end
