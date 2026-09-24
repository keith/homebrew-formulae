class GitRelativeStatus < Formula
  homepage "https://github.com/keith/git-relative-status"
  head "https://github.com/keith/git-relative-status.git"
  if OS.mac?
    url "https://github.com/keith/git-relative-status/releases/download/0.4.0/git-relative-status.tar.gz"
    sha256 "7fdb0c885c0d697d797da2f0e48e669bde7abc35305862b397c0e58408aae3eb"
  else
    url "https://github.com/keith/git-relative-status/archive/refs/tags/0.4.0.tar.gz"
    sha256 "e258dd6a482edacc0f3631cde692334bc8aabf998f85f5b0a2ea71d8e611997f"
  end

  depends_on "rust" => :build

  def install
    if build.head? || !OS.mac?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "git-relative-status"
    end
  end
end
