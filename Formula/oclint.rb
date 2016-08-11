require 'formula'

class Oclint < Formula
  homepage 'http://oclint.org/'
  url 'http://archives.oclint.org/releases/0.7/oclint-0.7-x86_64-apple-darwin-10.tar.gz'
  sha256 '697ea08fc7cd8945a40ed95e6f3d40c18ed15968b7b0c0519dce9d14873633a9'
  version '0.7'

  def install
    bin.install Dir['bin/oclint*']
    lib.install 'lib'
  end

  test do
    system 'oclint'
    system 'oclint-json-compilation-database'
    system 'oclint-xcodebuild'
  end
end
