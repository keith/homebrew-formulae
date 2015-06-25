require 'formula'

class Pinup  < Formula
  homepage 'https://github.com/keith/pinup-py'
  url 'https://github.com/keith/pinup-py/archive/1.0.0.tar.gz'
  sha1 '9ecf8ff6c9b6a13c58640c75ff824b0d8669fa35'
  head 'https://github.com/keith/pinup-py.git'

  depends_on 'python'

  def install
    `pip install -r requirements.txt`
    bin.install 'pinup'
  end
end
