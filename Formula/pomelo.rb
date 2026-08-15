class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.221"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.221/pom-darwin-arm64.tar.gz"
      sha256 "719d9f6f8adb18b3b07eb6e3e438218e18fb7d0bce51eef6d3c665eeeed0d841"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.221/pom-darwin-amd64.tar.gz"
      sha256 "8f85fd96cb9921543a44c8040d110762cc32074b2a8fd17d5520b9c8d8f55727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.221/pom-linux-arm64.tar.gz"
      sha256 "feaed0dee68514c4ba7ca0b575846775d63cf18e47b4aa32ba5e43a23c339977"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.221/pom-linux-amd64.tar.gz"
      sha256 "6ee1950d39757b1b43705e5d312460b3abbb5695cce6c11a0756cb08535c55b7"
    end
  end

  depends_on "git"

  def install
    bin.install Dir["pom-*"].first => "pom"
  end

  test do
    assert_match "Pomelo", shell_output("#{bin}/pom version")
  end
end
