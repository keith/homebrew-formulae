class Tag < Formula
  desc "Add shell aliases based on the results of searches"
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git", branch: "main"
  url "https://github.com/keith/tag/archive/refs/tags/0.7.0.tar.gz"
  sha256 "9dc1494e49d903a77625268a23a6a2ce10bcb53d2d4648528f613ea883115358"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
