class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git"
  url "https://github.com/keith/contacts-cli/releases/download/1.2.0/contacts.tar.gz"
  sha256 "4509ecdb56c5c53693cda13f982e8d59ca690ecaf2e77dd19db00ad2bb4999d6"

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
