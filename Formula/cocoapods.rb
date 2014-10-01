require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/CocoaPods/cocoapods-0.34.1.tar.gz"
  sha1 "c2cfb09a4b939b51352c07c99b61689f7b5aca5f"

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
