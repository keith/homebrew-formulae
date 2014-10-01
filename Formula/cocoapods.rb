require "formula"

class CocoaPods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/cocoapods/cocoapods-0.34.1.tar.gz"
  sha1 "69380870bbb91fc2d452fa1124634370c894eb20"

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
