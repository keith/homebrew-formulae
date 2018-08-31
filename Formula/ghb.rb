class Ghb < Formula
  include Language::Python::Virtualenv
  homepage 'https://github.com/keith/ghb'
  head 'https://github.com/keith/ghb.git'
  url 'https://github.com/keith/ghb/archive/1.4.0.tar.gz'
  sha256 'f66988e10ad364b0d9448d842eb3f91128de5c78a5c7b24fcf63cd2380e37698'

  depends_on "python"

  resource "requests" do
    url "https://pypi.python.org/packages/6e/40/7434b2d9fe24107ada25ec90a1fc646e97f346130a2c51aa6a2b1aba28de/requests-2.12.1.tar.gz"
    sha256 "2109ecea94df90980be040490ff1d879971b024861539abb00054062388b612e"
  end

  def install
    virtualenv_install_with_resources
    zsh_completion.install 'zsh/_ghb'
  end
end
