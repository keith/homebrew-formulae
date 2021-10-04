class NormalizeProfile < Formula
  desc "Output provisioning profiles in a diffable way"
  homepage "https://github.com/keith/normalize-profile"
  url "https://github.com/keith/normalize-profile/archive/refs/tags/1.2.0.tar.gz"
  head "https://github.com/keith/normalize-profile.git", branch: "main"
  sha256 "4d8dc2e425d1ea8ca837b50c752b41683004df5f9bd4540fc72d3ce33bf6c584"
  license "MIT"

  def install
    bin.install "normalize-profile"
  end
end
