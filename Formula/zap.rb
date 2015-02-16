class Zap < Formula
  homepage "https://github.com/Keithbsmiley/zap/"
  url "https://github.com/Keithbsmiley/zap/archive/1.0.0.tar.gz"
  sha1 "a5a87f54074c95e47daab492c90a4e6dcc85964c"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
