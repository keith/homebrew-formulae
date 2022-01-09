class Arcanist < Formula
  desc "Command line interface for Phabricator"
  homepage "https://github.com/phacility/arcanist"
  url "https://github.com/phacility/arcanist/archive/b50a646a3f49c8b842cf0764c59ea2c38c2f9567.tar.gz"
  version "b50a646a3f49c8b842cf0764c59ea2c38c2f9567"
  sha256 "d5c7b63fb27defa182bc910a03619caf9b6b644ac4fa29f117cf21a766048438"
  license "Apache 2.0"

  depends_on "php"

  def install
    prefix.install Dir["*"]
  end
end
