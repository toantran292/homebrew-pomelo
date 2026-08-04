class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.191"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.191/pom-darwin-arm64.tar.gz"
      sha256 "2b0a14cf6cf19f176a40ab863dcece80a9ed8e290a1b750007c1da3a33bc9f09"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.191/pom-darwin-amd64.tar.gz"
      sha256 "cc567d322e4989f936ef374aa0955a8fb6b711e1cbddbb83d73845b3602b63f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.191/pom-linux-arm64.tar.gz"
      sha256 "e820c597e318c5662bcc229ac06c250df61b813c1ddf3db89064147f23a50ddd"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.191/pom-linux-amd64.tar.gz"
      sha256 "27ee3b2e926a91184b7b7de764a7fec26962eeaf9e52ba2080bb336188dd01e6"
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
