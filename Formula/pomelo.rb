class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.187"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.187/pom-darwin-arm64.tar.gz"
      sha256 "3f6f4661eb712b28f2fe4ea37714000b2e7c88c2b276b0adf4480bc1066d65ae"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.187/pom-darwin-amd64.tar.gz"
      sha256 "019150d07015ed8e0de73943cf8a22e38f67b71f4ae24793e1501c86879fec52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.187/pom-linux-arm64.tar.gz"
      sha256 "018d4e77d4887d125b60d8919132bbf2978221e7f6b83cbeb0610f492afa84fe"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.187/pom-linux-amd64.tar.gz"
      sha256 "9e12b8264306fe93e1ac74ac92a610ec6f861d239b0b1f5917b5824c65ce47bc"
    end
  end

  depends_on "git"
  depends_on "tmux"

  def install
    bin.install Dir["pom-*"].first => "pom"
  end

  test do
    assert_match "Pomelo", shell_output("#{bin}/pom version")
  end
end
