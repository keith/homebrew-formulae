class DiffGrep < Formula
  desc "Filter matching hunks in diffs"
  homepage "https://github.com/keith/diff-grep"
  url "https://github.com/keith/diff-grep/archive/refs/tags/0.2.0.tar.gz"
  sha256 "5dc7f372b04b0ce46f0ca3c7aca80c32c74b161c5c43e67c8973cc08f8450fd0"
  head "https://github.com/keith/diff-grep.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
