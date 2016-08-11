require 'formula'

class Pinup  < Formula
  homepage 'https://github.com/keith/pinup-py'
  url 'https://github.com/keith/pinup-py/archive/1.0.0.tar.gz'
  sha256 'b867a7b0f0fc2ba064fac9e75f2ce7cd19562eb795ae6863f266dd5973818594'
  head 'https://github.com/keith/pinup-py.git'

  depends_on 'python'

  def install
    `pip install -r requirements.txt`
    bin.install 'pinup'
  end
end
