require "formula"

class Xcpretty < Formula
  homepage "https://github.com/Keithbsmiley/xcpretty/"
  url "http://keithbsmiley.github.io/xcpretty/xcpretty-0.1.7.tar.gz"
  sha1 "db646622e47740f356ec8921e1a7e86290d41a82"

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/xcpretty"
  end

  test do
    system "#{bin}/xcpretty", "--version"
  end
end
