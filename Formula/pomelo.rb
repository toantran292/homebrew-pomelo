class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.1/pom-darwin-arm64.tar.gz"
      sha256 "d6e4766b2666a749f0b5801117ced6d59883a349a95c83f84c96310bcfdebc64"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.1/pom-darwin-amd64.tar.gz"
      sha256 "dd24465479be193d9a91ecf851eed3df015d5002ae123958b27c96da351fbc6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.1/pom-linux-arm64.tar.gz"
      sha256 "123f1ecc0d983bc6ac95bc88e5d7e5c30259fcd3c9d022c4a1e0df4f48583afe"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.1/pom-linux-amd64.tar.gz"
      sha256 "37de167e9ac4890eedbf63fe970216a721193083bb5afbb9b939a2d2118bb01a"
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
