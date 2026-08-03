class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.183"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.183/pom-darwin-arm64.tar.gz"
      sha256 "2bf9dce2e7e04919f382d240d261e4560141d143801c775129f513e589f8c132"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.183/pom-darwin-amd64.tar.gz"
      sha256 "6235ba1dee5aeb4af03bdebbbeb48bfdea50bbdd1ef5e4f8c32171a998addb27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.183/pom-linux-arm64.tar.gz"
      sha256 "06b66fc477389e38194e6b256bd0697df0f3bc7911a1d26a1383d1be18065119"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.183/pom-linux-amd64.tar.gz"
      sha256 "d7361705134d2670056cbbd022a035c9440ee946dd2f67e6b5a276d96384fe77"
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
