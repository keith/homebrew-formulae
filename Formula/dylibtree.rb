class Dylibtree < Formula
  homepage "https://github.com/keith/dylibtree"
  head "https://github.com/keith/dylibtree.git", branch: "main"
  url "https://github.com/keith/dylibtree/releases/download/0.1.0/dylibtree.tar.gz"
  sha256 "60db39b19fa9b104a9158ad30d58e14aed9fa8ecb9ba1a6eb8f82a906505d583"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "dylibtree"
    end
  end
end
