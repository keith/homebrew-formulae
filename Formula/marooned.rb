require "formula"

class Marooned < Formula
  homepage "https://github.com/Keithbsmiley/marooned/"
  url "http://keithbsmiley.github.io/marooned/marooned-0.1.3.tar.gz"
  sha1 "36f8b6f7f46c8bb4b57d7cfd901bf995be85f941"

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
