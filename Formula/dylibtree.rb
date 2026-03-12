class Dylibtree < Formula
  homepage "https://github.com/keith/dylibtree"
  head "https://github.com/keith/dylibtree.git", branch: "main"
  url "https://github.com/keith/dylibtree/releases/download/0.1.1/dylibtree-0.1.1.tar.gz"
  sha256 "e1df832fee185ca1416ca8a013aabf6f0d0a0892a494aa5b3fca77df758714a8"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "dylibtree"
    end
  end
end
