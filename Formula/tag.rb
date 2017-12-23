class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.3.0/tag.tar.gz"
  sha256 "08efa0750e0961151571feec150506586b53c309808c6f79500d5bbfb5e81a66"

  def install
    bin.install "tag"
  end
end
