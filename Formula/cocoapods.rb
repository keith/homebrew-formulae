require "formula"

class Cocoapods < Formula
  homepage "https://github.com/keith/cocoapods/"
  url "http://keith.github.io/CocoaPods/cocoapods-0.37.2.tar.gz"
  sha1 "f727a8027a747f01323ee1188c4ce654731e3e51"

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
index 999a11d..8424809 100755
--- i/src/pod
+++ w/src/pod
@@ -9,7 +9,7 @@ require gems_setup

 $LOAD_PATH.unshift(File.expand_path("../../rubylib", file_path))

-Dir.glob(File.join(File.expand_path("../../"), "cocoapods-*/*/lib")) do |dir|
+Dir.glob(File.join(File.expand_path("../../../../", file_path), "cocoapods-*/*/lib")) do |dir|
   $LOAD_PATH.unshift(dir)
 end
