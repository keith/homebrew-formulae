class Zap < Formula
  homepage "https://github.com/keith/zap/"
  url "https://github.com/keith/zap/archive/1.0.2.tar.gz"
  sha256 "03427ccf96dae6cb715c0113a471f4a814918087a4ba6c33ac623272f816a9d6"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
