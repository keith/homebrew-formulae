class Zap < Formula
  homepage "https://github.com/keith/zap/"
  url "https://github.com/keith/zap/archive/1.0.1.tar.gz"
  sha1 "69e70c4d370cf5ef798b0a7dd3cb58e81ff6dfee"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
