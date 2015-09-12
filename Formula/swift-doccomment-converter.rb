class SwiftDoccommentConverter < Formula
  homepage "https://github.com/keith/swift-doccomment-converter"
  head "https://github.com/keith/swift-doccomment-converter.git"
  url "https://github.com/keith/swift-doccomment-converter/archive/1.0.0.tar.gz"
  sha256 "b42eabe26d2964f3a516fdcae88fe739f79d26468d00b851226b2089641dcb11"

  def install
    bin.install "convert-comments"
    bin.install "spacing.py"
  end
end
