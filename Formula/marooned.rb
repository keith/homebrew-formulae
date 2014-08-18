require "formula"

class Marooned < Formula
  homepage "https://github.com/Keithbsmiley/marooned/"
  url "http://keithbsmiley.github.io/marooned/marooned-0.1.2.tar.gz"
  sha1 "94ed394dd628fc4a1d354a1bc363c7a26473a6de"

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
