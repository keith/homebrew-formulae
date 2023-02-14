class Tag < Formula
  desc "Add shell aliases based on the results of searches"
  homepage "https://github.com/keith/tag"
  head "https://github.com/keith/tag.git", branch: "main"
  url "https://github.com/keith/tag/archive/refs/tags/0.9.1.tar.gz"
  sha256 "b99d910afce91694a643b581cea6cb1a6836b6a958006e80af0c37007111c8bb"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
