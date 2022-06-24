class SwiftpmLinuxCross < Formula
  desc "Cross compile from macOS to Linux with Swift Package Manager"
  homepage "https://github.com/keith/swiftpm-linux-cross"
  url "https://github.com/keith/swiftpm-linux-cross/archive/refs/tags/0.1.0.tar.gz"
  sha256 "143f14d5d805b346551e5a025f2f1e65a3a9153b71ce8b91a5b85a7f9af22877"

  head "https://github.com/keith/swiftpm-linux-cross.git"

  def install
    bin.install "setup-swiftpm-toolchain"
  end

  def caveats
    <<~EOS
    To setup a toolchain run 'setup-swiftpm-toolchain'

    See 'setup-swiftpm-toolchain --help' for configuration
    EOS
  end
end
