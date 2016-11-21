class Cycript < Formula
  homepage "http://www.cycript.org"
  url "https://cache.saurik.com/cycript/mac/cycript_0.9.594.zip"
  sha256 "6e0ded92e03ea44651a26a23158f82d8c939020960fbb3b47102a6b73770d381"

  patch :DATA

  def install
    bin.install "cycript"
    lib.install Dir["Cycript.*"]
  end

  def post_install
    chmod 0755, bin/"cycript"
  end
end

__END__
diff --git i/cycript w/cycript
index 077458e..7874f02 100644
--- i/cycript
+++ w/cycript
@@ -17,7 +17,7 @@
 # along with this program.  If not, see <http://www.gnu.org/licenses/>.
 # }}}

-dir=${0%/*}/Cycript.lib
+dir=($(brew --prefix cycript)/lib/Cycript.lib)
 if [[ ${dir} != /* ]]; then
     dir=$(pwd)/${dir}
 fi
