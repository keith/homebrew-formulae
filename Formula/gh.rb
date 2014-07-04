require 'formula'

class Gh < Formula
  homepage 'https://github.com/Keithbsmiley/gh'
  head 'https://github.com/Keithbsmiley/gh.git'

  def install
    bin.install Dir['gh*']
    zsh_completion.install '_gh'
  end

  test do
    system "#{ bin }/gh"
  end
end
