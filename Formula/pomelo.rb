class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.159"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.159/pom-darwin-arm64.tar.gz"
      sha256 "2308cca36e756dd67f05355c651563dc0cc0ef9e05f51ace133e10e22d4f0690"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.159/pom-darwin-amd64.tar.gz"
      sha256 "ea75d04364e40ac301e5b537b8f733c83ee236f93f74d989618129755a19a855"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.159/pom-linux-arm64.tar.gz"
      sha256 "2f45a406780c78943f00d8ff8837932d502a3611422e8ebd18b2c4e63da583d0"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.159/pom-linux-amd64.tar.gz"
      sha256 "245e764914b214caefe96c87996f11043208edb9e58962efd9fe6bb618ff1bbc"
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
