class CocoapodsRome < Formula
  homepage "https://github.com/neonichu/Rome"
  head "https://github.com/neonichu/Rome.git"
  keg_only "Homebrew CocoaPods will automatically find this plugin"

  depends_on "cocoapods"

  def install
    prefix.install Dir["*"]
  end
end
