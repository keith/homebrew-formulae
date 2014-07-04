require 'formula'

class Ghb < Formula
  homepage 'https://github.com/Keithbsmiley/ghb'
  head 'https://github.com/Keithbsmiley/ghb.git'

  def install
    bin.install Dir['ghb*']
    zsh_completion.install '_ghb'
  end

  test do
    system "#{ bin }/ghb"
  end
end
