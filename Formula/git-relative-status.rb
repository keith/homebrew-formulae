class GitRelativeStatus < Formula
  homepage "https://github.com/keith/git-relative-status"
  head "https://github.com/keith/git-relative-status.git"
  url "https://github.com/keith/git-relative-status/releases/download/0.2.0/git-relative-status.tar.gz"
  sha256 "ad7bb4f8f2bb73c77ffaf1a117482d1e92e1c522e552f81a4c12871cd7287c48"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "install", "--root", prefix
    else
      bin.install "git-relative-status"
    end
  end
end
