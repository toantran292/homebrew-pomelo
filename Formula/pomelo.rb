class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.160"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.160/pom-darwin-arm64.tar.gz"
      sha256 "bbcb92b608a77c1d27514da82f629c5b6fc776d4a45d45fe1bdb1045612bbf16"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.160/pom-darwin-amd64.tar.gz"
      sha256 "113043c211f973cbab6f341535e52aefc827b90e16fa28a79afd9ce7def30c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.160/pom-linux-arm64.tar.gz"
      sha256 "fd83284f903f06177246d4fb264332e7edc3ba383fc25e2beda2470e7fd611a2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.160/pom-linux-amd64.tar.gz"
      sha256 "17315712b4a408ebdd3eb8ce4f83159d27fb29849fd895f12c1c85cfa92b154f"
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
