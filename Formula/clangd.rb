class Clangd < Formula
  homepage "https://clangd.llvm.org"
  url "https://github.com/clangd/clangd/releases/download/13.0.0/clangd-mac-13.0.0.zip"
  sha256 "e945174d7203c630c0a6210ac7d47a019a61ecd6a0c1d4e208ecbd5db75befe9"

  def install
    bin.install "bin/clangd"
    lib.install Dir["lib/*"]
  end
end
