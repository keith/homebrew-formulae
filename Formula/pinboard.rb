class Pinboard < Formula
  homepage 'https://github.com/keith/pinboard'
  head 'https://github.com/keith/pinboard.git'
  url 'https://github.com/keith/pinboard/archive/1.1.0.tar.gz'
  sha256 '0cca861d6140cfe5149442604e9666ab9516d185ad08ee9739fdbb4cdb9e404d'

  depends_on :python

  def install
    `pip install requests`
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_pinboard'
  end
end
