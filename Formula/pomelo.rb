class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.2/pom-darwin-arm64.tar.gz"
      sha256 "40e3b1122addccd457b4d17648405631dcaac200836c49dd75cbc67f4ddf20b8"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.2/pom-darwin-amd64.tar.gz"
      sha256 "36a88389b672f6fb23b86ea28f7fff8a0fb613bb689a4f1ebbc0ac74aeeb635d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.2/pom-linux-arm64.tar.gz"
      sha256 "92478b4dc6d64d99de9375184ce16a16151ea5daa8aef2ee94380c61ec49b4e2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.2/pom-linux-amd64.tar.gz"
      sha256 "5b7bdd291fb27454e6e8b92aee9fdaa6308288c695ca23212e114802faf14187"
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
