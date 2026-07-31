class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.169"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.169/pom-darwin-arm64.tar.gz"
      sha256 "639dcc343fcf3431110667f383b83521c95feabdf7b699151287dc0548584c18"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.169/pom-darwin-amd64.tar.gz"
      sha256 "e75f9d883c825a56ee03ec03611793540a8f9e9d6fc4e72005234c6d3570b851"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.169/pom-linux-arm64.tar.gz"
      sha256 "a8d12cd1a16d04d81f7297ca8d1c6ee7081888072e7c828a8a5611c9b662f841"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.169/pom-linux-amd64.tar.gz"
      sha256 "ef340b83fdfa53dd085e338925ab3425329af6cf0b6512da178c6f1433e5b35d"
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
