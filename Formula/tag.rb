class Tag < Formula
  desc "Add shell aliases based on the results of searches"
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git", branch: "main"
  url "https://github.com/keith/tag/archive/refs/tags/0.10.0.tar.gz"
  sha256 "bcd45803150a001d971ec034175e0f359ecb845c5100cc3125af323d7c77f112"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
