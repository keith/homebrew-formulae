class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.2.0.tar.gz"
  sha256 "1e2835d7062ef27f087c7cc2dd0774fe84b94fc2485770d6ec41d44483b1f04b"

  head "https://github.com/keith/git-pile.git"

  depends_on "gh"

  def install
    bin.install Dir["bin/*"]
  end
end
