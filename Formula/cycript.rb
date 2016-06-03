class Cycript < Formula
  homepage "http://www.cycript.org"
  url "https://cache.saurik.com/cycript/mac/Cycript_0.9.592.zip"
  sha256 "05b14dd93bd0a29b8e12d527b52b3898f15d706cdf937c6d9f0897a93fe851b7"

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
