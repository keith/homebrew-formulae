class CircleCli < Formula
  homepage 'https://github.com/keith/circle-cli'
  head 'https://github.com/keith/circle-cli.git'
  url 'https://github.com/keith/circle-cli/archive/0.1.0.tar.gz'
  sha256 'ce7405691d971ecc6cf817e7b315fb8a99c1cfb4f5a69556b703be267c752b89'

  depends_on "python"

  resource "requests" do
    url "https://pypi.python.org/packages/16/09/37b69de7c924d318e51ece1c4ceb679bf93be9d05973bb30c35babd596e2/requests-2.13.0.tar.gz"
    sha256 "5722cd09762faa01276230270ff16af7acf7c5c45d623868d9ba116f15791ce8"
  end

  def install
    bin.install Dir['src/*']
  end
end
