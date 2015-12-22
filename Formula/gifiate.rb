class Gifiate < Formula
  homepage "https://github.com/keith/gifiate"
  head "https://github.com/keith/gifiate.git"
  url "https://github.com/keith/gifiate/archive/0.1.1.tar.gz"
  sha256 "621eecf0f32f72ab1be0c7a23d94dc10abd4abe2779480ad8ad4287852b420ba"

  depends_on "ffmpeg"
  depends_on "gifsicle"
  depends_on "youtube-dl"

  def install
    bin.install "gifiate"
  end
end
