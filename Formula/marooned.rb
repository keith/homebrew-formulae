require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "https://keith.github.io/marooned/marooned-0.2.0.tar.gz"
  sha256 "05c79c15e2996b169d176b07937da001d9b5111638474cda09095bba76229a7b"

  depends_on "xcproj" => :recommended

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/marooned"
  end

  test do
    system "#{bin}/marooned", "--version"
  end
end
