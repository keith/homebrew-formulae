class GitPile < Formula
  desc "Stacked diff support for GitHub workflows"
  homepage "https://github.com/keith/git-pile"
  url "https://github.com/keith/git-pile/archive/refs/tags/0.1.0.tar.gz"
  sha256 "945a68c945db547c0c32985208c9b2982571fe63584cd25a5ebcaff404fd480c"

  head "https://github.com/keith/git-pile.git"

  def install
    bin.install Dir["bin/*"]
  end
end
