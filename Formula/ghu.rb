class Ghu < Formula
  head "https://github.com/pbrisbin/ghu.git"
  homepage "https://github.com/pbrisbin/ghu"
  url "https://github.com/pbrisbin/ghu/archive/v0.0.5.tar.gz"

  patch :DATA

  depends_on "gnu-sed"
  depends_on "coreutils"

  def install
    bin.install "bin/ghu"
    share.install "share/ghu"
  end
end

__END__
diff --git i/bin/ghu w/bin/ghu
index 12fd8b5..922abdf 100755
--- i/bin/ghu
+++ w/bin/ghu
@@ -22,7 +22,7 @@ EOF
 share="$(dirname "$0")"/../share/ghu

 get() {
-  curl --silent "$@" | sed "
+  curl --silent "$@" | gsed "
     /^.*\(You've been unsubscribed from the thread\).*$/!d
     s//\1/g"
 }
diff --git i/share/ghu/parse-header w/share/ghu/parse-header
index e6b0785..2d1dcaf 100755
--- i/share/ghu/parse-header
+++ w/share/ghu/parse-header
@@ -6,8 +6,8 @@
 # - Prints a single newline if the header's not found
 #
 ###
-sed "/^$1: /,/^\([A-Z].*: \| *$\)/!d" | head -n -1 |\
-  sed "s/^$1: \(.*\)/\1/g" | xargs printf -- "%s " |\
-  sed "s/  *$//g"
+gsed "/^$1: /,/^\([A-Z].*: \| *$\)/!d" | ghead -n -1 |\
+  gsed "s/^$1: \(.*\)/\1/g" | xargs printf -- "%s " |\
+  gsed "s/  *$//g"

 printf "\n"
