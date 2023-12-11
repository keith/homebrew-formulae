class DyldSharedCacheExtractor < Formula
  desc "Extract libraries from the dyld shared cache"
  homepage "https://github.com/keith/dyld-shared-cache-extractor"
  url "https://github.com/keith/dyld-shared-cache-extractor/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6cad1e319589ec3e630157fce0d98b94faa5d9f45b6c02eb147e7083d4078bde"
  head "https://github.com/keith/dyld-shared-cache-extractor.git", branch: "main"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
