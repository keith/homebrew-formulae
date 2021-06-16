class NormalizeProfile < Formula
  desc "Output provisioning profiles in a diffable way"
  homepage "https://github.com/keith/normalize-profile"
  url "https://github.com/keith/normalize-profile/archive/refs/tags/1.1.0.tar.gz"
  head "https://github.com/keith/normalize-profile.git", branch: "main"
  sha256 "1dfe847f051c50427f7066d5ef7c2a59936baa5fbb357f46e29f6a4daa6553ba"
  license "MIT"

  def install
    bin.install "normalize-profile"
  end
end
