class Zap < Formula
  homepage "https://github.com/keith/zap/"
  url "https://github.com/keith/zap/archive/1.0.1.tar.gz"
  sha256 "532bc400390e57ebcf210cca6faa44ac02f941e51ed24283f7ad4e044b2f977d"

  def install
    bin.install "zap"
    zsh_completion.install '_zap'
  end
end
