class Zap < Formula
  homepage "https://github.com/keith/zap/"
  head "https://github.com/keith/zap.git", branch: "main"
  url "https://github.com/keith/zap/archive/1.1.0.tar.gz"

  sha256 "3eddc687450cad7c7c0d71e5e481545f4e33461191b15f85b1f0de3eaba7ce80"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
