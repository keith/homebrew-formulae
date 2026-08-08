class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.9.0.tar.gz"
  sha256 "5a46823f911d09abd704959f994e626a9ec42c19e47f284da8455715ebb16bd2"

  head "https://github.com/keith/git-pile.git"

  depends_on "fzy"
  depends_on "gh"
  depends_on "python"

  def install
    bin.install Dir["bin/*"]
  end
end
