require "formula"

class Cocoapods < Formula
  homepage "https://github.com/keith/cocoapods/"
  url "http://keith.github.io/CocoaPods/cocoapods-0.37.1.tar.gz"
  sha1 "9e34c54775521474127e5b7de3e5149e234cb117"

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
