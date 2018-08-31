class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.4.0/tag.tar.gz"
  sha256 "ccd6eea60961a55e49978bb06d09617b55d1e1b84368dd9665a6995482c74574"

  def install
    bin.install "tag"
  end
end
