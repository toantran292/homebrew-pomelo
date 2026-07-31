class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.175"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.175/pom-darwin-arm64.tar.gz"
      sha256 "11c0ea4d6faf5c06f1f333bf53c559bcc8285d2f3d2907116ab5fd9d4a0c0608"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.175/pom-darwin-amd64.tar.gz"
      sha256 "3eaba06dbce00113e622d50a70c662701175afba9f8a64d458305c16de9b311c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.175/pom-linux-arm64.tar.gz"
      sha256 "2d330eea02781a19db10a4d78472f031465be840d041cbc5c18d3d208662d7ef"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.175/pom-linux-amd64.tar.gz"
      sha256 "0693d554341c729dfddeb9d83dde24c1d50c620a642a09c00789fb29ee9c67ed"
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
