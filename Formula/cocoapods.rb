require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/cocoapods/cocoapods-0.34.1.tar.gz"
  sha1 "a76085ea3f3d067614ba6b9369bb427cd1495936"

  depends_on "xcproj" => :recommended

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/cocoapods"
  end

  test do
    system "#{bin}/cocoapods", "--version"
  end
end
