class ContactsCli < Formula
  homepage "https://github.com/keith/contacts-cli"
  head "https://github.com/keith/contacts-cli.git"
  url "https://github.com/keith/contacts-cli/releases/download/1.1.0/contacts.tar.gz"
  sha256 "5450a1c216f0493703551f2bc8c2a01317b06d4209f7fcf779964bb485cbb5bf"

  conflicts_with "contacts", because: "contacts also ships a `contacts` binary"

  def install
    if build.head?
      system "make", "install", "PREFIX=#{bin}"
    else
      bin.install "contacts"
    end
  end
end
