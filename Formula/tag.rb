class Tag < Formula
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git"
  url "https://github.com/keith/tag/releases/download/0.2.0/tag.tar.gz"
  sha256 "feadc7d10910a74e9d3ae45a27071ab2a04bf0652a4ab0f89dd3cab185466b64"

  def install
    bin.install "tag"
  end
end
