class Pdmpkeys < Formula
  desc "Control mpd with OS X media keys"
  homepage "https://github.com/pdixon/pdmpkeys"
  head "https://github.com/pdixon/pdmpkeys.git"

  depends_on "mpc"
  patch :DATA

  def install
    system "make", "pdmpkeys"
    bin.install "pdmpkeys"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>Program</key>
      <string>#{opt_bin}/pdmpkeys</string>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end

__END__
diff --git i/pdmpkeys.m w/pdmpkeys.m
index 1179ad6..844ca5c 100644
--- i/pdmpkeys.m
+++ w/pdmpkeys.m
@@ -41,17 +41,17 @@ CGEventRef tapEventCallback(CGEventTapProxy proxy, CGEventType type, CGEventRef

     if(type==NX_SYSDEFINED && eventData==PlayPauseKeyUp)
     {
-        system("mpc toggle");
+        system("/usr/local/bin/mpc toggle");
         return NULL;
     }
     else if(type==NX_SYSDEFINED && eventData==NextKeyUp)
     {
-        system("mpc next");
+        system("/usr/local/bin/mpc next");
         return NULL;
     }
     else if(type==NX_SYSDEFINED && eventData==PreviousKeyUp)
     {
-        system("mpc prev");
+        system("/usr/local/bin/mpc prev");
         return NULL;
     }

