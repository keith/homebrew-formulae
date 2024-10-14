require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "https://keith.github.io/marooned/marooned-0.3.0.tar.gz"
  sha256 "b977dbe8b4d1e9931d37c5860a46173a46d064307fc58954fc63d362a86a317e"

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/marooned"
  end

  test do
    system "#{bin}/marooned", "--version"
  end
end
