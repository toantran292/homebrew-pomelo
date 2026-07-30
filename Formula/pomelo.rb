class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.158"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.158/pom-darwin-arm64.tar.gz"
      sha256 "f9cd1ba083c1e03e8d58c3ede280a2fd9b303eec9e40d77500543f571ec1be31"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.158/pom-darwin-amd64.tar.gz"
      sha256 "2d9303b42f31e52e522b96bc6bf742d906d4158ed58606ba584004038acb3d5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.158/pom-linux-arm64.tar.gz"
      sha256 "3a1c022d6f57de721fccc5072305f4e0c16152620759fbfe053dfa75ca74f0c2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.158/pom-linux-amd64.tar.gz"
      sha256 "ca8afa363facb16049f9121c4bea423adb44bef3c9e47aadd610d02e190a05cc"
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
