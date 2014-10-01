require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/CocoaPods/cocoapods-0.34.1.tar.gz"
  sha1 "858d27629a8001c3b8128b85576d0ec9800fd485"

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
