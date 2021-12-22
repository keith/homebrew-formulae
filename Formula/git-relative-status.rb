class GitRelativeStatus < Formula
  homepage "https://github.com/keith/git-relative-status"
  head "https://github.com/keith/git-relative-status.git"
  url "https://github.com/keith/git-relative-status/releases/download/0.4.0/git-relative-status.tar.gz"
  sha256 "7fdb0c885c0d697d797da2f0e48e669bde7abc35305862b397c0e58408aae3eb"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "install", "--root", prefix
    else
      bin.install "git-relative-status"
    end
  end
end
