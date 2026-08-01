class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.178"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.178/pom-darwin-arm64.tar.gz"
      sha256 "779f8ca47d887b6c3dd4625f43532001d8a55f3fb3912e92f1c0d08fe76e223f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.178/pom-darwin-amd64.tar.gz"
      sha256 "7d5bf8b2ac9d193ebb2d36ca224e4b887b33fba62a55f48e45eb9635cdac292a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.178/pom-linux-arm64.tar.gz"
      sha256 "6a90d5b7bd4144927bef983f6284f621fbe140d4d8607a894c505d2ebdece6e2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.178/pom-linux-amd64.tar.gz"
      sha256 "c64eb49f2f61c9922abb615fe1cef7fea4c193f4d7f1e511a585a2d812a056da"
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
