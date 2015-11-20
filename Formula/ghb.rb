class Ghb < Formula
  homepage 'https://github.com/keith/ghb'
  head 'https://github.com/keith/ghb.git'
  url 'https://github.com/keith/ghb/archive/1.0.2.tar.gz'
  sha256 '9bf4e6c5061aba50cd130055bd61151acb3c025ee1224b3d9ae4849328c1b3ff'

  depends_on :python

  def install
    `pip install requests`
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_ghb'
  end
end
