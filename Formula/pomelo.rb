class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.7/pom-darwin-arm64.tar.gz"
      sha256 "3f0484b7e6a4eaa1a5f1129070717413c9d6e0579ddfe95f7d4f30225692efee"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.7/pom-darwin-amd64.tar.gz"
      sha256 "c62dd1b1049b9b5b7b0e73cff509c6ebb0c9fe66eb2f690ec2fe69259b4fc976"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.7/pom-linux-arm64.tar.gz"
      sha256 "c1880da996675d57b0900d8becfb464111454946127ea09869d95c0ac5b678d5"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.7/pom-linux-amd64.tar.gz"
      sha256 "c61870b0925b7fa0c6e6ddf810773862d95f5f99e2f133d7f54857d6037acbf6"
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
