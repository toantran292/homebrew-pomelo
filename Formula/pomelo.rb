class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.192"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.192/pom-darwin-arm64.tar.gz"
      sha256 "dd42023d40f0532001d6387cee724586e5bb72ec2a805f14ffb9544e0efc6192"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.192/pom-darwin-amd64.tar.gz"
      sha256 "a3634c2b9c7e7048026b928a95ef59212c6044c84581017851928c377ae62bd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.192/pom-linux-arm64.tar.gz"
      sha256 "18efe66ba34b4fa810c7da1e70f204a8016f747f7d0d07f5c10d7937864ce294"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.192/pom-linux-amd64.tar.gz"
      sha256 "3e3ac860e08cb91faf1f57f945f8cd71ead62bd8059cf95cdfb278ce884c9103"
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
