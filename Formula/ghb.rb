class Ghb < Formula
  homepage 'https://github.com/keith/ghb'
  head 'https://github.com/keith/ghb.git'
  url 'https://github.com/keith/ghb/archive/1.0.1.tar.gz'
  sha256 '6781bc410984d1d3b3713af13ecf5e116505ed4fea81f3294135eccde3786b71'

  depends_on :python

  def install
    `pip install requests`
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_ghb'
  end
end
