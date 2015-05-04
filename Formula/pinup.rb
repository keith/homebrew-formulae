require 'formula'

class Pinup  < Formula
  homepage 'https://github.com/keith/pinup-py'
  url 'https://github.com/keith/pinup-py/archive/1.0.0.zip'
  sha1 '159f0541900472abd4bfbe44b631138eedf8c429'
  head 'https://github.com/keith/pinup-py.git'

  depends_on 'python'

  def install
    `pip install -r requirements.txt`
    bin.install 'pinup'
  end
end
