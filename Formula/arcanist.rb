class Arcanist < Formula
  desc "Command line interface for Phabricator"
  homepage "https://github.com/phacility/arcanist"
  url "https://github.com/phacility/arcanist/archive/e50d1bc4eabac9c37e3220e9f3fb8e37ae20b957.tar.gz"
  head "https://github.com/phacility/arcanist.git"
  version "e50d1bc4eabac9c37e3220e9f3fb8e37ae20b957"
  sha256 "acd8a30ff7e4a3fd8f9868ca357d05e377f9fade1c2dcedd824307a892bef2bb"
  license "Apache 2.0"

  patch :DATA

  depends_on "php"

  def install
    prefix.install Dir["*"]
  end
end

__END__
diff --git a/src/future/FutureIterator.php b/src/future/FutureIterator.php
index bb464cd4..f6568d22 100644
--- a/src/future/FutureIterator.php
+++ b/src/future/FutureIterator.php
@@ -435,11 +435,11 @@ final class FutureIterator
       // exits but a socket is kept open. But we don't actually need to do
       // anything because the SIGCHLD will interrupt the stream_select(), as
       // long as we have a handler registered.
-      if (function_exists('pcntl_signal')) {
-        if (!pcntl_signal(SIGCHLD, array(__CLASS__, 'handleSIGCHLD'))) {
-          throw new Exception(pht('Failed to install signal handler!'));
-        }
-      }
+      // if (function_exists('pcntl_signal')) {
+      //   if (!pcntl_signal(SIGCHLD, array(__CLASS__, 'handleSIGCHLD'))) {
+      //     throw new Exception(pht('Failed to install signal handler!'));
+      //   }
+      // }
       $handler_installed = true;
     }

diff --git a/src/future/http/HTTPSFuture.php b/src/future/http/HTTPSFuture.php
index 48824fb1..9689c7a6 100644
--- a/src/future/http/HTTPSFuture.php
+++ b/src/future/http/HTTPSFuture.php
@@ -399,7 +399,7 @@ final class HTTPSFuture extends BaseHTTPFuture {
       }

       if ($this->canSetCAInfo()) {
-        curl_setopt($curl, CURLOPT_CAINFO, $this->getCABundle());
+      //  curl_setopt($curl, CURLOPT_CAINFO, $this->getCABundle());
       }

       $verify_peer = 1;
@@ -415,8 +415,8 @@ final class HTTPSFuture extends BaseHTTPFuture {
         }
       }

-      curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, $verify_peer);
-      curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, $verify_host);
+      curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // $verify_peer);
+      curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0); // $verify_host);
       curl_setopt($curl, CURLOPT_SSLVERSION, 0);

       // See T13391. Recent versions of cURL default to "HTTP/2" on some
