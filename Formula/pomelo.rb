class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.214"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.214/pom-darwin-arm64.tar.gz"
      sha256 "45ad3e1d9fef4af36f019b1f31439e1dc9feaa0f0b62bf7c86a86b1437317a45"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.214/pom-darwin-amd64.tar.gz"
      sha256 "d461e15b896340723fa11d6c667020971c9f8caf93f180f1c5766e34c7a492cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.214/pom-linux-arm64.tar.gz"
      sha256 "ab8e9cfb9e629fbebc11dcd53dd315d50aea5780e7743791b2624abc776869cd"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.214/pom-linux-amd64.tar.gz"
      sha256 "41a7ca83318e7a809a0dacea5c995533ee7ac3d8dfe6470023263d327d6a6d6e"
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
