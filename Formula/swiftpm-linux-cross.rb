class SwiftpmLinuxCross < Formula
  desc "Cross compile from macOS to Linux with Swift Package Manager"
  homepage "https://github.com/keith/swiftpm-linux-cross"
  url "https://github.com/keith/swiftpm-linux-cross/archive/refs/tags/0.1.1.tar.gz"
  sha256 "222ec80526ad51cf4ef556a5b9145371a3ce155aad89e3bdb1100be7f4a856f2"

  head "https://github.com/keith/swiftpm-linux-cross.git"

  def install
    bin.install "setup-swiftpm-toolchain"
    bin.install "swift-autolink-extract.swift"
  end

  def caveats
    <<~EOS
    To setup a toolchain run 'setup-swiftpm-toolchain'

    See 'setup-swiftpm-toolchain --help' for configuration
    EOS
  end
end
