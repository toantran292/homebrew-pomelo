class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.196"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.196/pom-darwin-arm64.tar.gz"
      sha256 "4abf5aed1ebadb41e11f79c3b25976467ec26f7f31c469de0b6bcf7fa3f5cca4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.196/pom-darwin-amd64.tar.gz"
      sha256 "fd6e153218348f4c1b66c0c24de4a4e2882b9d0a3219e4856e078a9b2b6b95f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.196/pom-linux-arm64.tar.gz"
      sha256 "3e1d72ba435dfabe91b474f01ea92937ddaad5baf78e8de3b033aeb9d313dc15"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.196/pom-linux-amd64.tar.gz"
      sha256 "8de97111bf5f6bbc2c68ef2e7040296e00b0aaa2f3ed7bc1a65638a7af3c5d3b"
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
