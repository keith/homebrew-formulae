class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.6.0.tar.gz"
  sha256 "85cbb6ef08934ce6b3b1c47dbfe404b27d4f5280b83c1b724fafee942a155f99"

  head "https://github.com/keith/git-pile.git"

  depends_on "fzy"
  depends_on "gh"
  depends_on "python"

  def install
    bin.install Dir["bin/*"]
  end
end
