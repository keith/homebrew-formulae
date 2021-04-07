class Arcanist < Formula
  desc "Command line interface for Phabricator"
  homepage "https://github.com/phacility/arcanist"
  url "https://github.com/phacility/arcanist/archive/f0f95e5b2612d011592f9dbe1885756c5219c70b.tar.gz"
  version "f0f95e5b2612d011592f9dbe1885756c5219c70b"
  sha256 "fd5fe72d760cf9bf3906f1785c816f3557c0cc27ddb2d407cf4f1c08f729a767"
  license "Apache 2.0"

  def install
    prefix.install Dir["*"]
  end
end
