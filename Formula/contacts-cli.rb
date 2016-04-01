class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git"
  url "https://github.com/keith/contacts-cli/releases/download/1.0.2/contacts.tar.gz"
  sha256 "1f4dc406d78cd55985935c32c7d7ad4d9bcef6cf03656c7f61d4f76e4236ba88"

  conflicts_with "contacts", because: "contacts also ships a `contacts` binary"

  def install
    if build.head?
      system "make", "install", "PREFIX=#{bin}"
    else
      bin.install "contacts"
    end
  end
end
