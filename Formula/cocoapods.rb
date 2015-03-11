require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/CocoaPods/cocoapods-0.36.0.tar.gz"
  sha1 "a4e46b4d6dfa6d4bee709772792666049aa46281"

  depends_on "xcproj" => :recommended

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/pod"
  end

  test do
    system "#{bin}/cocoapods", "--version"
  end
end
