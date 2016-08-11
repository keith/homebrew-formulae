require "formula"

class Cocoapods < Formula
  homepage "https://github.com/keith/cocoapods/"
  url "https://keith.github.io/CocoaPods/cocoapods-0.39.0.tar.gz"
  sha256 "c3fcee0038e10027a16f06d62cbe0b3cf8448d5385283c74a102aa5ca8fa8bf8"

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
