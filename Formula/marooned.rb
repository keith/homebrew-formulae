require "formula"

class Marooned < Formula
  homepage "https://github.com/Keithbsmiley/marooned/"
  url "http://keithbsmiley.github.io/marooned/marooned-0.1.1.tar.gz"
  sha1 "f56bbbe5b4d4464fac71c297f184cd93b8324002"

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
