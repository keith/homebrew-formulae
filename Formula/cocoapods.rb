require "formula"

class Cocoapods < Formula
  homepage "https://github.com/keith/cocoapods/"
  url "http://keith.github.io/CocoaPods/cocoapods-0.37.1.tar.gz"
  sha1 "9e34c54775521474127e5b7de3e5149e234cb117"

  depends_on "xcproj" => :recommended
  patch :DATA

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/pod"
  end

  test do
    system "#{bin}/cocoapods", "--version"
  end
end

__END__
diff --git i/src/pod w/src/pod
index f67ccf4..999a11d 100755
--- i/src/pod
+++ w/src/pod
@@ -9,6 +9,9 @@ require gems_setup

 $LOAD_PATH.unshift(File.expand_path("../../rubylib", file_path))

+Dir.glob(File.join(File.expand_path("../../"), "cocoapods-*/*/lib")) do |dir|
+  $LOAD_PATH.unshift(dir)
+end

 if RUBY_VERSION > '1.8.7' && Encoding.default_external != Encoding::UTF_8
   puts "\e[33mWARNING: CocoaPods requires your terminal to be using UTF-8 encoding."
