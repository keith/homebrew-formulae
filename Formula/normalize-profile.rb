class NormalizeProfile < Formula
  desc "Output provisioning profiles in a diffable way"
  homepage "https://github.com/keith/normalize-profile"
  url "https://github.com/keith/normalize-profile/archive/refs/tags/1.0.0.tar.gz"
  sha256 "e1a6a7648de267295cc0121274768991a515c9bd9e54ee139f54c47fdf75a21b"
  license "MIT"

  def install
    bin.install "normalize-profile"
  end
end
