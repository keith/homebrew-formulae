class Xcpretty < Formula
  homepage "https://github.com/supermarin/xcpretty"
  url "https://github.com/supermarin/xcpretty/archive/v0.1.12.tar.gz"
  sha256 "5caca20fb34553b03ae10a40a7701a1ec2af6d61b396c1705887f7ff2d1e6b09"

  patch :DATA

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "bin/xcpretty"
  end

  test do
    system "#{bin}/xcpretty", "--version"
  end
end

__END__
diff --git i/bin/xcpretty w/bin/xcpretty
index 640b58d..a3f0fb2 100755
--- i/bin/xcpretty
+++ w/bin/xcpretty
@@ -1,12 +1,14 @@
-#!/usr/bin/env ruby
+#!/usr/bin/env ruby --disable-gems

 if RUBY_VERSION < '1.8.7'
   abort "error: XCPretty requires Ruby 1.8.7 or higher."
 end

-if $0 == __FILE__
-  $:.unshift File.expand_path('../../lib', __FILE__)
-end
+require 'pathname'
+
+file_path = Pathname.new(__FILE__).realpath
+$LOAD_PATH.unshift(File.expand_path("../../rubylib", file_path))
+
 require 'xcpretty'
 require 'optparse'

