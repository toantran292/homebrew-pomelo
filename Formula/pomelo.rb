class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.165"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.165/pom-darwin-arm64.tar.gz"
      sha256 "2df44303b1a95eb8f2c3b01cd5992ad23947fb848d67db6ad6dda6525f79f373"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.165/pom-darwin-amd64.tar.gz"
      sha256 "11ccde69c1856e89c642df5f8850efe718aaec348a912922277d3da73814b88e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.165/pom-linux-arm64.tar.gz"
      sha256 "99ef31d005dbf8068940f285cdd8efd79bf0488db1cbedce2d45b70f0f07ac62"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.165/pom-linux-amd64.tar.gz"
      sha256 "faf750ee814278528b496a1246216e6a13bae28b95cc35876eba40a5948928cd"
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
