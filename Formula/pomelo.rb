class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.171"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.171/pom-darwin-arm64.tar.gz"
      sha256 "2940c509a66a8ec666b4add48c17ea9f7522672b806c007aca58ba2f55614641"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.171/pom-darwin-amd64.tar.gz"
      sha256 "0d8d8a0a8545561c572b33e8675db584f4685b1896e4821014f6d46b38d595f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.171/pom-linux-arm64.tar.gz"
      sha256 "24053dc2cb6bf4a0e5671e00f6d0e7758e4c21ed0cc859acfe5c96d99b1c08ff"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.171/pom-linux-amd64.tar.gz"
      sha256 "ac03900f701cdb20f23e92b0ae33dfa5a6f27b1717faafda2a7e2df5a04d95cb"
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
