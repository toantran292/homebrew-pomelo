class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.200"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.200/pom-darwin-arm64.tar.gz"
      sha256 "827e3e3691677a29823dcefad81961b725f1841313e51dae76c3ae73a651f0c0"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.200/pom-darwin-amd64.tar.gz"
      sha256 "040d252c7eeab5ecbd7e6c36e3c065c9f6110a6cfeebf75df55153cc2f7e3a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.200/pom-linux-arm64.tar.gz"
      sha256 "2fb8e4d9069f68664b9a86e1e43c5ae04adc1957d544d61c4b28727bede1c28f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.200/pom-linux-amd64.tar.gz"
      sha256 "ab376c78722cf7f1913c6e4ca52ffa3fb5452b8fc6c16ceefc31e123cf02f6e4"
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
