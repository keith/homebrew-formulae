require 'formula'

class Ghb < Formula
  homepage 'https://github.com/Keithbsmiley/ghb'
  head 'https://github.com/Keithbsmiley/ghb.git'

  depends_on :python

  def install
    `pip install requests`
    bin.install Dir['ghb*']
    bin.install Dir['helpers']
    zsh_completion.install '_ghb'
  end

  test do
    system "#{ bin }/ghb"
  end
end
