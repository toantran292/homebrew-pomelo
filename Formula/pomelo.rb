class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.195"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.195/pom-darwin-arm64.tar.gz"
      sha256 "217a49c99225c9330b8e3a3de53e658270374905c6df1369893170897b6e5f04"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.195/pom-darwin-amd64.tar.gz"
      sha256 "abb0ec3294c7e7077f2a4b9bb8aa59759754f99ec4a6bead01e831f07bf42eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.195/pom-linux-arm64.tar.gz"
      sha256 "c4c1514f789cc22e3226ffb5784fc462b780fc77e7bc87ccf462221f0a7f050f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.195/pom-linux-amd64.tar.gz"
      sha256 "b5c9fd2b5f05c0f7a602ed3f3c238c520eae45bd8f98eb59bc0c89c02777b2eb"
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
