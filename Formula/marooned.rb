require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "https://keith.github.io/marooned/marooned-0.3.0.tar.gz"
  sha256 "471c29eaef105162e8cc7270eb9fb906f24fec3e3be15432f9fb653903724d03"

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/marooned"
  end

  test do
    system "#{bin}/marooned", "--version"
  end
end
