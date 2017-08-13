class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git"
  url "https://github.com/keith/contacts-cli/releases/download/1.1.1/contacts.tar.gz"
  sha256 "1dec757046ae91d1933bd87610f69d26b2d16ba91f2ce26527cfe0ad9a975e38"

  conflicts_with "contacts", because: "contacts also ships a `contacts` binary"

  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "contacts"
    end
  end
end
