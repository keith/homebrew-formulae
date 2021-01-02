class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.6.0/tag.tar.gz"
  sha256 "d7eb2aa6e1c0151b62578874d719ab9780dc3d50158a4eb53f4a754d009fdf89"

  def install
    bin.install "tag"
  end
end
