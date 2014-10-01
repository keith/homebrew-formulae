require "formula"

class CocoaPods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/cocoapods/cocoapods-0.34.1.tar.gz"
  sha1 "521af9d0d3145d9dd0e14dcf8923a58fbe53f22f"

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
