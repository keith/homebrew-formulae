class Pinboard < Formula
  homepage 'https://github.com/keith/pinboard'
  head 'https://github.com/keith/pinboard.git'
  url 'https://github.com/keith/pinboard/archive/1.1.1.tar.gz'
  sha256 '556b0c73fc4f72760e3fbc854e00291c15f3b27da95cd7d953e281921f00cd47'

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
