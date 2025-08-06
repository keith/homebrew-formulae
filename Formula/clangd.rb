class Clangd < Formula
  homepage "https://clangd.llvm.org"
  url "https://github.com/clangd/clangd/releases/download/20.1.8/clangd-mac-20.1.8.zip"
  sha256 "c2303d0a83dcb31c08c4920e815586ad1b0c17ee8d1a484d605f33d784a31402"

  def install
    bin.install "bin/clangd"
    lib.install Dir["lib/*"]
  end
end
