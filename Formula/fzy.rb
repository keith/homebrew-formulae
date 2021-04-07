class Fzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/jhawthorn/fzy"
  url "https://github.com/jhawthorn/fzy/releases/download/1.0/fzy-1.0.tar.gz"
  sha256 "80257fd74579e13438b05edf50dcdc8cf0cdb1870b4a2bc5967bd1fdbed1facf"
  license "MIT"
  head "https://github.com/jhawthorn/fzy.git"

  patch :DATA

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foo", pipe_output("#{bin}/fzy -e foo", "bar\nfoo\nqux").chomp
  end
end

__END__
diff --git i/src/tty_interface.c w/src/tty_interface.c
index 343dde8..14ca57f 100644
--- i/src/tty_interface.c
+++ w/src/tty_interface.c
@@ -303,7 +303,7 @@ static const keybinding_t keybindings[] = {{"\x1b", action_exit},       /* ESC *
 					   {KEY_CTRL('P'), action_prev},	 /* C-P */
 					   {KEY_CTRL('N'), action_next},	 /* C-N */
 					   {KEY_CTRL('K'), action_prev},	 /* C-K */
-					   {KEY_CTRL('J'), action_next},	 /* C-J */
+					   {KEY_CTRL('J'), action_emit},	 /* C-J */
 					   {KEY_CTRL('A'), action_beginning},    /* C-A */
 					   {KEY_CTRL('E'), action_end},		 /* C-E */

