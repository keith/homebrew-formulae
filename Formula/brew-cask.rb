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
index 8b96c55..588b0a1 100644
--- i/lib/hbc/artifact/hardlinked.rb
+++ w/lib/hbc/artifact/hardlinked.rb
@@ -5,13 +5,13 @@ class Hbc::Artifact::Hardlinked < Hbc::Artifact::Symlinked
   end

   def self.link_type_english_name
-    'Hardlink'
+    'Copy'
   end

   def create_filesystem_link(source, target)
     Pathname.new(target).dirname.mkpath
-    @command.run!('/bin/ln', :args => ['-hf', '--', source, target])
-    add_altname_metadata source, target
+    @command.run!('/bin/cp', :args => ['-a', '--', source, target])
+    Hbc::Installer.new(@cask).uninstall(true)
   end

   def summarize_one_link(artifact_spec)
diff --git i/lib/hbc/artifact/symlinked.rb w/lib/hbc/artifact/symlinked.rb
index bcaa1a3..b96c7a2 100644
--- i/lib/hbc/artifact/symlinked.rb
+++ w/lib/hbc/artifact/symlinked.rb
@@ -4,13 +4,13 @@ class Hbc::Artifact::Symlinked < Hbc::Artifact::Base
   end

   def self.link_type_english_name
-    'Symlink'
+    'Copy'
   end

   def create_filesystem_link(source, target)
     Pathname.new(target).dirname.mkpath
-    @command.run!('/bin/ln', :args => ['-hfs', '--', source, target])
-    add_altname_metadata source, target
+    @command.run!('/bin/cp', :args => ['-a', '--', source, target])
+    Hbc::Installer.new(@cask).uninstall(true)
   end

   # Try to make the asset searchable under the target name.  Spotlight
diff --git i/lib/hbc/installer.rb w/lib/hbc/installer.rb
index 37a23a2..771e824 100644
--- i/lib/hbc/installer.rb
+++ w/lib/hbc/installer.rb
@@ -70,8 +70,6 @@ class Hbc::Installer
       purge_versioned_files
       raise e
     end
-
-    puts summary
   end

   def summary
