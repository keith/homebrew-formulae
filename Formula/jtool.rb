class Jtool < Formula
  homepage "http://www.newosxbook.com/tools/jtool.html"
  url "http://www.newosxbook.com/tools/jtool.tar"
  version "1.0"
  sha256 "d08b032ffd6f2df93df360b9776d659ee82d43f03bdd55a0c9403b1392fb591e"

  def install
    bin.install "jtool"
    man1.install "jtool.1"
  end
end
