class CocoapodsDeintegrate < Formula
  homepage "https://github.com/kylef/cocoapods-deintegrate"
  head "https://github.com/kylef/cocoapods-deintegrate.git"
  keg_only "Homebrew CocoaPods will automatically find this plugin"

  depends_on "cocoapods"

  def install
    prefix.install Dir["*"]
  end
end
