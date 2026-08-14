class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.211"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.211/pom-darwin-arm64.tar.gz"
      sha256 "de20f9100c8bb890c2cdf6726c6d1c0dfadce8aa5f3797dd60e918b07cc82068"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.211/pom-darwin-amd64.tar.gz"
      sha256 "da5a329fff6909115640baaf8417104ddf204c6ef47d2434af3285ee1edcbd70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.211/pom-linux-arm64.tar.gz"
      sha256 "3c03d588924b5e6bf0a7199c0cdac1f781e37b68b57e18e9b1b6f05a211ff47f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.211/pom-linux-amd64.tar.gz"
      sha256 "193126c296ae80e287e2dc1b6667c3277e47a5235c024836799c0ab9685c043c"
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
