class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.177"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.177/pom-darwin-arm64.tar.gz"
      sha256 "ff8f360f58a30018212abdef37f44cf9984d8a540624e688fa0546ae4b7bb9be"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.177/pom-darwin-amd64.tar.gz"
      sha256 "cfc5dbd407d160da3c6859dddec0938f6d653cb5d30746c8c58dbf9399ecc3fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.177/pom-linux-arm64.tar.gz"
      sha256 "01f0ab851374f2beb0b4ec17348741688b63fb44059e3ac4f0ee99acced928dd"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.177/pom-linux-amd64.tar.gz"
      sha256 "31adb460fe1b5272fe85fcbc65e3dca93dfe0e95c87036196e66634f9c6d366c"
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
