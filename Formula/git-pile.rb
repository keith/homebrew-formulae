class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.3.0.tar.gz"
  sha256 "ca42b0a386102f28a79658c38953553d3c2d2091c6ff5fb1321547a5f1a63e73"

  head "https://github.com/keith/git-pile.git"

  depends_on "fzy"
  depends_on "gh"
  depends_on "python"

  def install
    bin.install Dir["bin/*"]
  end
end
