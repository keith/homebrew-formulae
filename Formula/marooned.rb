require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "https://keith.github.io/marooned/marooned-0.2.0.tar.gz"
  sha256 "5adda16673119d077d91a556bf7f5e279d1a15010e7861905a59253ec34c5efa"

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
