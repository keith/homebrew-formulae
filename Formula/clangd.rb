class Clangd < Formula
  homepage "https://clangd.llvm.org"
  url "https://github.com/clangd/clangd/releases/download/14.0.3/clangd-mac-14.0.3.zip"
  sha256 "9ad803ab626144e243b921dc2f2f9ecf0cd6c80ded5617c71c17cb79f4bb3887"

  def install
    bin.install "bin/clangd"
    lib.install Dir["lib/*"]
  end
end
