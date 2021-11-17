class Tag < Formula
  desc "Add shell aliases based on the results of searches"
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git", branch: "main"
  url "https://github.com/keith/tag/archive/refs/tags/0.7.1.tar.gz"
  sha256 "b09c1191fe1a6ddad69919a95f43df450675e7a161a0f5e1fc228cef6ff6c36c"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
