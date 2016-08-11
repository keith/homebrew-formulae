require "formula"

class Marooned < Formula
  homepage "https://github.com/keith/marooned/"
  url "https://keith.github.io/marooned/marooned-0.1.3.tar.gz"
  sha256 "fb5ef9c8c003c39c040fd9cb41b49a797d5f6e0eddecb3bb183fef285d1f2dc1"

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
