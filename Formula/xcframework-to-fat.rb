class XcframeworkToFat < Formula
  desc "Create a fat framework from an xcframework bundle"
  homepage "https://github.com/keith/xcframework-to-fat"
  url "https://github.com/keith/xcframework-to-fat/archive/refs/tags/1.0.0.tar.gz"
  sha256 "744c298c70c5f57269ca07f49a03e7d78ef5d935e5c11809ef8cab36d9b9c276"
  license "MIT"

  def install
    bin.install "xcframework-to-fat"
  end
end
