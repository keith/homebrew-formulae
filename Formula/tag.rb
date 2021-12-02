class Tag < Formula
  desc "Add shell aliases based on the results of searches"
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git", branch: "main"
  url "https://github.com/keith/tag/archive/refs/tags/0.8.0.tar.gz"
  sha256 "bbdf3928128727e5fe9b304c173f2cd57f8aa004b7e6d463709ea2e2274979d0"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
