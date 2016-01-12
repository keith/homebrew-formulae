class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git"
  url "https://github.com/keith/contacts-cli/releases/download/1.0.1/contacts.tar.gz"
  sha256 "b9cd278b7a86e6810ae54c696d79eb159fc29bb8a91e3157ca8ccd0146664981"

  conflicts_with "contacts", because: "contacts also ships a `contacts` binary"

  def install
    if build.head?
      system "make", "install", "PREFIX=#{bin}"
    else
      bin.install "contacts"
    end
  end
end
