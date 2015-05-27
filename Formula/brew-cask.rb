class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  head "https://github.com/caskroom/homebrew-cask.git"

  skip_clean "bin"
  patch :DATA

  def install
    man1.install "doc/man/brew-cask.1"
    prefix.install "lib" => "rubylib"
    inreplace "bin/brew-cask", "/lib", "/rubylib"

    prefix.install "Casks", "bin"
    (bin+"brew-cask").chmod 0755
  end

  test do
    system "#{bin}/brew-cask", "cask", "info", "google-chrome"
  end
end

__END__
diff --git i/lib/hbc/artifact/hardlinked.rb w/lib/hbc/artifact/hardlinked.rb
index 8b96c55..e66d7f1 100644
--- i/lib/hbc/artifact/hardlinked.rb
+++ w/lib/hbc/artifact/hardlinked.rb
@@ -10,7 +10,7 @@ class Hbc::Artifact::Hardlinked < Hbc::Artifact::Symlinked

   def create_filesystem_link(source, target)
     Pathname.new(target).dirname.mkpath
-    @command.run!('/bin/ln', :args => ['-hf', '--', source, target])
+    @command.run!('/bin/cp', :args => ['-a', '--', source, target])
     add_altname_metadata source, target
   end

diff --git i/lib/hbc/artifact/symlinked.rb w/lib/hbc/artifact/symlinked.rb
index bcaa1a3..85bb3db 100644
--- i/lib/hbc/artifact/symlinked.rb
+++ w/lib/hbc/artifact/symlinked.rb
@@ -9,7 +9,7 @@ class Hbc::Artifact::Symlinked < Hbc::Artifact::Base

   def create_filesystem_link(source, target)
     Pathname.new(target).dirname.mkpath
-    @command.run!('/bin/ln', :args => ['-hfs', '--', source, target])
+    @command.run!('/bin/cp', :args => ['-a', '--', source, target])
     add_altname_metadata source, target
   end

