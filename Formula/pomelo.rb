class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.220"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.220/pom-darwin-arm64.tar.gz"
      sha256 "c089e5f70b3a91eee7ad0883a0302fc8968d0e8f07565f69aa587d9fc788f477"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.220/pom-darwin-amd64.tar.gz"
      sha256 "bddf76c2dc5675cb7699d85155aafbf85681e67ed0228e67598ab04886f2f035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.220/pom-linux-arm64.tar.gz"
      sha256 "3bce75f4183a78d62ee8eb1d4307579c6da74cae0141a08bc1fc1e4ab0860f95"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.220/pom-linux-amd64.tar.gz"
      sha256 "e96bfeff867b43902c86622066d11bedb5b4c2f7153c632503e01cb894dba1a4"
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
