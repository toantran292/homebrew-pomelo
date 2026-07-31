class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.174"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.174/pom-darwin-arm64.tar.gz"
      sha256 "09e9bd77fda3da9df62902acdd2bb777473e0027d9d33fc64571e859b92cae84"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.174/pom-darwin-amd64.tar.gz"
      sha256 "f1b261e2424e14d946f435e137b9b728445efe4a26cf68c51e13e9afed43ec36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.174/pom-linux-arm64.tar.gz"
      sha256 "7bb46adee952e13bc0ec1c1ebf9b13afaaf2452d901dfaaed5d8382ef32bdbea"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.174/pom-linux-amd64.tar.gz"
      sha256 "0153ae3212ccba5b7cf068d0ce2058201a27bd4acaa4285459d5661f25993cf7"
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
