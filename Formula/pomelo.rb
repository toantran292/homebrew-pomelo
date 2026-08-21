class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.4/pom-darwin-arm64.tar.gz"
      sha256 "1b447e01b4908788aa3045b96d96f3fd76770975e518282879a21aafb08e84e5"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.4/pom-darwin-amd64.tar.gz"
      sha256 "ddc5664b3c5123a60c074b09e7a9bda6a88c3292e14b647901684e9fd03d2d62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.4/pom-linux-arm64.tar.gz"
      sha256 "99310bb28630f7f2f55028518a35c264721266ab4dae2f8a69117bfd5ff9c538"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.4/pom-linux-amd64.tar.gz"
      sha256 "0fee559216b2b6821fa2ff77b5939cc4b4564adc0cd14beed740cbca08defb4a"
    end
  end

  depends_on "git"

  def install
    bin.install Dir["pom-*"].first => "pom"
  end

  test do
    assert_match "Pomelo", shell_output("#{bin}/pom version")
  end
end
