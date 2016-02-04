class Urlview < Formula
  desc "URL extractor/launcher"
  homepage "https://github.com/sigpipe/urlview"
  head "https://github.com/keith/urlview.git", :branch => "ks/pcre"

  depends_on "pcre"

  def install
    inreplace "urlview.man", "/etc/urlview/url_handler.sh", "open"
    inreplace "urlview.c",
      '#define DEFAULT_COMMAND "/etc/urlview/url_handler.sh %s"',
      '#define DEFAULT_COMMAND "open %s"'

    man1.mkpath
    ENV.prepend "CFLAGS", "-I /usr/local/include"
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}", "--with-pcre"
    system "make", "install"
  end
end
