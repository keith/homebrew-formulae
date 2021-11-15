class DyldSharedCacheExtractor < Formula
  desc "Extract libraries from the dyld shared cache"
  homepage "https://github.com/keith/dyld-shared-cache-extractor"
  url "https://github.com/keith/dyld-shared-cache-extractor/archive/refs/tags/0.2.0.tar.gz"
  sha256 "b0cc3000cda32e6f879d44c0035822f9a002ca8b4fa281a7e9648bd511470acd"
  head "https://github.com/keith/dyld-shared-cache-extractor.git", branch: "main"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
