class SourcekitLsp < Formula
  desc "Language Server Protocol implementation for Swift and C-based languages"
  homepage "https://github.com/apple/sourcekit-lsp"
  url "https://github.com/apple/sourcekit-lsp/archive/refs/tags/swift-5.7.1-RELEASE.tar.gz"
  sha256 "274b49eb2d0f1539af69636e2667a20a77e31992a21bf59ee6138d3fa28f9ff8"

  head "https://github.com/apple/sourcekit-lsp.git", branch: "main"

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--product", "sourcekit-lsp"
    bin.install ".build/release/sourcekit-lsp"
  end
end
