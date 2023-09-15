class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.7.0.tar.gz"
  sha256 "a9c8b6e6c4e0235e1580be911f4322feb21c70c92b3f4f72a6bc6184714ad07f"

  head "https://github.com/keith/git-pile.git"

  depends_on "fzy"
  depends_on "gh"
  depends_on "python"

  def install
    bin.install Dir["bin/*"]
  end
end
