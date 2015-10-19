class Lunchy < Formula
  homepage "https://github.com/eddiezane/lunchy"
  url "https://github.com/eddiezane/lunchy/archive/v0.10.4.tar.gz"
  sha256 "58e741a13a7daf8eccf6424ea2ef923326acf75d5b6696714539f208e3418be0"

  patch :DATA

  def install
    prefix.install "lib" => "rubylib"

    bin.install "bin/lunchy"
    zsh_completion.install "extras/lunchy-completion.zsh"
    bash_completion.install "extras/lunchy-completion.bash"
  end

  test do
    system "#{bin}/lunchy", "ls"
  end
end

__END__
diff --git i/bin/lunchy w/bin/lunchy
index 6c9a7cf..07eac46 100755
--- i/bin/lunchy
+++ w/bin/lunchy
@@ -1,6 +1,9 @@
-#!/usr/bin/env ruby
+#!/usr/bin/env ruby --disable-gems
+
+require 'pathname'
+file_path = Pathname.new(__FILE__).realpath
+$LOAD_PATH.unshift(File.expand_path("../../rubylib", file_path))

-$LOAD_PATH << File.dirname(__FILE__) + "/../lib" if $0 == __FILE__
 require 'optparse'
 require 'lunchy'
