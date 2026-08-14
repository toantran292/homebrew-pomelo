class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.204/pom-darwin-arm64.tar.gz"
      sha256 "d2fbf49a0d3d5b6cf77378b27f2e83b2d9521d0868db73389e80a5aeafe8a8e0"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.204/pom-darwin-amd64.tar.gz"
      sha256 "9dc6e5d30cfd7bf6dee73a30fb9020525e4b88d4316b815e9414b7bb3106307a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.204/pom-linux-arm64.tar.gz"
      sha256 "b80a2d6e287d5027526b93352082d315bdd81c08704cc79c8ec1e784478b854d"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.204/pom-linux-amd64.tar.gz"
      sha256 "d0e605f2d48f3d4088d8d159dcff13f6d74993403b4887293c3e4ec7cb94466b"
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
