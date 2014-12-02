require "formula"

class Rapidjson < Formula
  homepage "https://miloyip.github.io/rapidjson/"
  head "https://github.com/miloyip/rapidjson.git"

  def install
    prefix.install "include", "example", "doc"
  end

  test do
    system ENV.cxx, "#{prefix}/example/capitalize/capitalize.cpp", "-o", "capitalize"
    system "echo '{\"a\":\"b\"}' | ./capitalize"
  end
end
