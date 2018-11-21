class GitRelativeStatus < Formula
  homepage "https://github.com/keith/git-relative-status"
  head "https://github.com/keith/git-relative-status.git"
  url "https://github.com/keith/git-relative-status/releases/download/0.3.0/git-relative-status.tar.gz"
  sha256 "48ba2c3c79ad00b7e8610e3ae794deb8dc4df1ff1279e5d9794f47513b902dc8"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "install", "--root", prefix
    else
      bin.install "git-relative-status"
    end
  end
end
