require "formula"

class Cocoapods < Formula
  homepage "https://github.com/keith/cocoapods/"
  url "http://keith.github.io/CocoaPods/cocoapods-0.39.0.tar.gz"
  sha1 "8295a19dc5d179c99038f071b982a67862e1d81f"

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
