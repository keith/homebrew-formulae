class DyldSharedCacheExtractor < Formula
  desc "Extract libraries from the dyld shared cache"
  homepage "https://github.com/keith/dyld-shared-cache-extractor"
  url "https://github.com/keith/dyld-shared-cache-extractor/archive/refs/tags/0.1.0.tar.gz"
  sha256 "edec96d11c924869d612a3a2cbd0eba1e0c2513167268f76939401f9f84eaea3"
  head "https://github.com/keith/dyld-shared-cache-extractor.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
