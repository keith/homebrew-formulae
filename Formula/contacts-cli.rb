class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git", branch: :deployment
  url "https://github.com/keith/contacts-cli/releases/download/1.0.0/contacts.tar.gz"
  sha256 "d4848d2ba350e253f364ba7cf1e5a917bb668f6e5c174e5718f946498824dd75"

  conflicts_with "contacts", because: "contacts also ships a `contacts` binary"

  def install
    if build.head?
      system "make", "install", "PREFIX=#{bin}"
    else
      bin.install "contacts"
    end
  end
end
