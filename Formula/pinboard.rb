class Pinboard < Formula
  homepage 'https://github.com/keith/pinboard'
  head 'https://github.com/keith/pinboard.git'
  url 'https://github.com/keith/pinboard/archive/1.1.0.tar.gz'
  sha256 '0cca861d6140cfe5149442604e9666ab9516d185ad08ee9739fdbb4cdb9e404d'

  depends_on :python

  resource "requests" do
    url "https://pypi.python.org/packages/6e/40/7434b2d9fe24107ada25ec90a1fc646e97f346130a2c51aa6a2b1aba28de/requests-2.12.1.tar.gz"
    sha256 "2109ecea94df90980be040490ff1d879971b024861539abb00054062388b612e"
  end

  def install
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_pinboard'
  end
end
