class Zap < Formula
  homepage "https://github.com/keith/zap/"
  head "https://github.com/keith/zap.git", branch: "main"
  url "https://github.com/keith/zap/archive/1.2.0.tar.gz"

  sha256 "4c0a218107ad19e344be3b506f09a47a99e6e396bd3ba490ba9f161a2e37c172"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
