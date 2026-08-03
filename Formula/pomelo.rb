class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.185"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.185/pom-darwin-arm64.tar.gz"
      sha256 "ce2ebb8f9667fbe32a2e4cdfc91c018912e872869eae9399cb42ddb2415e0413"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.185/pom-darwin-amd64.tar.gz"
      sha256 "c9517ae825ed1d16b40ba0b97a383a2de378c979a4f228ce17cf1e87387743b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.185/pom-linux-arm64.tar.gz"
      sha256 "7d9ce5c5f66cef33a3327f17516598c5048030e45dbe29ebedcaa29cfb72d35e"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.185/pom-linux-amd64.tar.gz"
      sha256 "c8ef794cd2d14676d732001e95fdbec235d355320b00f0138dea0e45d33838ed"
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
