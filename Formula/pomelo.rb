class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.215"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.215/pom-darwin-arm64.tar.gz"
      sha256 "31ef8bf7c3fbe0031209f7a0322e9176dd575dc54d78b31420663dfd041d6dc5"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.215/pom-darwin-amd64.tar.gz"
      sha256 "0825d2adf0e1be2004ad92830d2c836fd0b07cd5770ec0dd616c572e5d6e8006"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.215/pom-linux-arm64.tar.gz"
      sha256 "4c1a9132ae5fdde3abc781f8da2b6af9552ae06ebbf4a776b94ae580fe5c3899"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.215/pom-linux-amd64.tar.gz"
      sha256 "cba79ae241fba026c1d11b001405238b6432586bac78751bca06c9e53d8f47e9"
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
