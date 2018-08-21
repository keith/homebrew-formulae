class GitRelativeStatus < Formula
  homepage "https://github.com/keith/git-relative-status"
  head "https://github.com/keith/git-relative-status.git"
  url "https://github.com/keith/git-relative-status/releases/download/0.1.0/git-relative-status.tar.gz"
  sha256 "2b75fbba327bad83b824cc80d818b816e23d89254e03a1bf92fc0991f0e50f24"

  depends_on "rust"

  def install
    if build.head?
      system "cargo", "install", "--root", prefix
    else
      bin.install "git-relative-status"
    end
  end
end
