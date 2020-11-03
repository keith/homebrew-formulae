class DiffGrep < Formula
  desc "Filter matching hunks in diffs"
  homepage "https://github.com/keith/diff-grep"
  url "https://github.com/keith/diff-grep/archive/0.1.0.tar.gz"
  sha256 "3ba5e8356c62e2dd2484e5b6525d113b5477730f726aeb5879c145e4a2af1a7e"
  head "https://github.com/keith/diff-grep.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
