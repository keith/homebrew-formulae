class Cycript < Formula
  homepage "http://www.cycript.org"
  url "https://cache.saurik.com/cycript/mac/Cycript_0.9.505.zip"

  patch :DATA

  def install
    bin.install "cycript"
    lib.install Dir["Cycript.*"]
  end
end

__END__
diff --git i/cycript w/cycript
index b20b733..f19d165 100755
--- i/cycript
+++ w/cycript
@@ -19,5 +19,5 @@
 # along with this program.  If not, see <http://www.gnu.org/licenses/>.
 # }}}

-dir=$(dirname "${BASH_SOURCE[0]}")
+dir=$(brew --prefix cycript)/lib
 DYLD_LIBRARY_PATH="${dir}"/Cycript.lib exec "${dir}"/Cycript.lib/cycript "$@"
