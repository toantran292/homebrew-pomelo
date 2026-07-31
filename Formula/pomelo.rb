class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.167"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.167/pom-darwin-arm64.tar.gz"
      sha256 "9a718cd4d99dc4c04876e2ed537f486527aa90376823f60be98561eff416eb01"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.167/pom-darwin-amd64.tar.gz"
      sha256 "bb8deabf319e355438604479533e83317787a603f44cc50dd9728c7d8a92c549"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.167/pom-linux-arm64.tar.gz"
      sha256 "f12b5bee100bcc2d4d02280e6bda113127aa0ad6c3381e6045dc4dcf6c0e6491"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.167/pom-linux-amd64.tar.gz"
      sha256 "a616a5d465aab48f2e3b643d1ab94b761d155b6e6d8d65f8f09411cdf8b821b4"
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
