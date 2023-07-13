require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "http://keith.github.io/marooned/marooned-0.2.0.tar.gz"
  sha1 "c923fe31cea72c07de39c208d7f9c4743ff656be"

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
