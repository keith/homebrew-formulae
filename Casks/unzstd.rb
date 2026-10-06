cask "unzstd" do
  version "0.1.0"
  sha256 "ea5b5efc250c986ed1165446cfdde3f906b1ab5e49ff46ea7d7059ca407466f2"

  url "https://github.com/keith/Unzstd/releases/download/#{version}/Unzstd.zip"
  name "Unzstd"
  desc "Extract Zstandard files and tar archives"
  homepage "https://github.com/keith/Unzstd"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Unzstd.app"
end
