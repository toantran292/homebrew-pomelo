class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.176"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.176/pom-darwin-arm64.tar.gz"
      sha256 "a5873585650ec778845c14c0dac12d0369fa22ed7f75c80ce24333baa51f0ac1"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.176/pom-darwin-amd64.tar.gz"
      sha256 "fb4f2447cdd88a02c3cd6d4f12fd5f5bd6b4e31c2ce0df425c9fb84051aea9eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.176/pom-linux-arm64.tar.gz"
      sha256 "c1ef0fc56e2e458bcae9f24953b6f65f196e0c8aac15bcb921b3f16e5b917353"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.176/pom-linux-amd64.tar.gz"
      sha256 "6bb1002dd6ad98805d7e1b517196e42b4a129de2a2fe3a65ec5f82b60246bbe3"
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
