class Pinboard < Formula
  homepage 'https://github.com/keith/pinboard'
  head 'https://github.com/keith/pinboard.git'
  url 'https://github.com/keith/pinboard/releases/download/1.0.0/pinboard.tar.gz'
  sha256 'a7b2aadaaffc2ddadbf6da683c0fe1e77e9548f7077d2dc386ee731c62b76fda'

  depends_on :python

  def install
    `pip install requests`
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_pinboard'
  end
end
