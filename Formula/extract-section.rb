class ExtractSection < Formula
  include Language::Python::Virtualenv
  homepage "https://github.com/keith/extract-section"
  head "https://github.com/keith/extract-section.git"
  url "https://github.com/keith/extract-section/releases/download/0.1.0/extract-section.tar.gz"
  sha256 "db5f1cae9f35ade0767a7873961fd35b451b84a2453c141e5d316cb394cda0a8"

  depends_on "radare2"
  depends_on :python

  resource "r2pipe" do
    url "https://pypi.python.org/packages/ea/33/6564663d3f8af41213033cc760fb3823315c1ec38aa6dab877000ddddeff/r2pipe-0.8.9.tar.gz"
    sha256 "239b45d4d05993ed98755c4599131105d059b667902f3b39ac4325f6af76df52"
  end

  def install
    virtualenv_install_with_resources
  end
end
