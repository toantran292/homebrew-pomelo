class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.212"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.212/pom-darwin-arm64.tar.gz"
      sha256 "08352b3f1a92750a453ba4acd14888535962c65b2dc62ff48ec02910c3ee13b7"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.212/pom-darwin-amd64.tar.gz"
      sha256 "ef1293e50b270999c993b7f3f0958521136bb7233b844545ca3cb160fbe826a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.212/pom-linux-arm64.tar.gz"
      sha256 "709485edb714a27dd7a8fc0d116d133b58fefa29efe219e82ba5b6141bddc03e"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.212/pom-linux-amd64.tar.gz"
      sha256 "a78e88b2e1fba0b34881c75a2383b89f90cd7b43cb56591f350e3a44c64c0a4c"
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
