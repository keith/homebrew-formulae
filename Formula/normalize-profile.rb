class NormalizeProfile < Formula
  desc "Output provisioning profiles in a diffable way"
  homepage "https://github.com/keith/normalize-profile"
  url "https://github.com/keith/normalize-profile/archive/refs/tags/1.2.1.tar.gz"
  head "https://github.com/keith/normalize-profile.git", branch: "main"
  sha256 "60e6c2d1de65654728fdfb083190b5108a0db49d5678545ddb1d998d1fd3786e"
  license "MIT"

  def install
    bin.install "normalize-profile"
  end
end
