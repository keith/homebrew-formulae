require "formula"

class Marooned < Formula
  homepage "https://github.com/Keithbsmiley/marooned/"
  url "http://keithbsmiley.github.io/marooned/marooned-0.1.0.tar.gz"
  sha1 "11d8fe56431dce5adad9dc251903bb6042578d0c"

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
