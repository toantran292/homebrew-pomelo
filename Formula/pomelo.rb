class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.162"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.162/pom-darwin-arm64.tar.gz"
      sha256 "7774103a96ae239e3242484f4536eeab650445bb29fcc1c961e3217ff59689b4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.162/pom-darwin-amd64.tar.gz"
      sha256 "6228fb4fb60bdfe4c4cf335a2198b72b92b2a27c0fe9437cc4860f7e9e47593e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.162/pom-linux-arm64.tar.gz"
      sha256 "b6d391854bef84f290f407fcf78863a0c4fe22f0b846703b6505e75cc9593189"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.162/pom-linux-amd64.tar.gz"
      sha256 "a59ce87ef4c932301e3a3b55a5a11df7eddf73925cb571d07c87a492824003c6"
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
