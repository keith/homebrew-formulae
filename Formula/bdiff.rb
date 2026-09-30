class Bdiff < Formula
  desc "Binary diff TUI for Mach-O, ELF, and PE/COFF"
  homepage "https://github.com/keith/bdiff"
  license "MIT"
  head "https://github.com/keith/bdiff.git", branch: "main"

  if OS.mac?
    url "https://github.com/keith/bdiff/releases/download/0.1.0/bdiff-0.1.0-universal-apple-darwin.tar.gz"
    sha256 "d3e26006a2a45cdc0774f1f25af8585d38d5e88587ecb0f2a5e7cc18a4680e87"
  elsif Hardware::CPU.arm?
    url "https://github.com/keith/bdiff/releases/download/0.1.0/bdiff-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e78f8bda360a6067c113090aa50f9cb6862ea393da31b145de690b6a3571b7b1"
  else
    url "https://github.com/keith/bdiff/releases/download/0.1.0/bdiff-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41fb9e485b7ce2477421a54dfeb4cd388e6d4a0f764e8bd1075ce1f1a9fe407e"
  end

  depends_on "rust" => :build if build.head?

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "bdiff"
    end
  end
end
