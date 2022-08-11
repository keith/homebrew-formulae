class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.4.0.tar.gz"
  sha256 "417fbb477904f4ac476c0c369008a42e6e17e5365c1ef1d527c001bad2656481"

  head "https://github.com/keith/git-pile.git"

  depends_on "fzy"
  depends_on "gh"
  depends_on "python"

  def install
    bin.install Dir["bin/*"]
  end
end
