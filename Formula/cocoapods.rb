require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/CocoaPods/cocoapods-0.35.0.tar.gz"
  sha1 "0fa38248c69e7e8163ee58dd57db886597c92088"

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
