class Jtool < Formula
  homepage "http://www.newosxbook.com/tools/jtool.html"
  url "http://www.newosxbook.com/tools/jtool.tar"
  version "0.9"
  sha256 "79ff63674e93c2a3de024480af9af2ba402aa97b8528840e97c7013040891108"

  def install
    bin.install "jtool"
    man1.install "jtool.1"
  end
end
