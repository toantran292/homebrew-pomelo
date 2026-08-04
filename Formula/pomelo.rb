class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.188"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.188/pom-darwin-arm64.tar.gz"
      sha256 "b9546d577ba6adc4963c9936848df94f0a2e106b90c8b6710a7d1d8660f8967f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.188/pom-darwin-amd64.tar.gz"
      sha256 "05b2751600e1c44dcb22d4f003dd6ef8b185d474536b1b28c1f06fde4af17287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.188/pom-linux-arm64.tar.gz"
      sha256 "ae4abf2cfaa15d54d14258fbcd87951a59368e1808f8fb455dd51c2c4b743c0a"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.188/pom-linux-amd64.tar.gz"
      sha256 "f63ab8c5099d54abba481a60fabe0f8a4189c4e251321129836b22d9f04be4aa"
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
