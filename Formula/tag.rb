class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.5.0/tag.tar.gz"
  sha256 "1180cbf890164324f8429f1e0ce842e34bc6084413d5501aebe61386e9030a17"

  def install
    bin.install "tag"
  end
end
