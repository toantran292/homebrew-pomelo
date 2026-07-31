class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.173"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.173/pom-darwin-arm64.tar.gz"
      sha256 "55a111e2eff61146131217ef58017a11f8d26530caafad73b34d9615fcc3c622"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.173/pom-darwin-amd64.tar.gz"
      sha256 "376b992b6081c24c49379145b364e72c05fc100d7c64310e84a9c2e7a422e77f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.173/pom-linux-arm64.tar.gz"
      sha256 "b93f54a876fb815c50fa0fda0d356deb0720dc120fdd099bd5988394d6f78714"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.173/pom-linux-amd64.tar.gz"
      sha256 "029fcdb6e22730fc792c70186bc9c5ffa417aeaf8db23ad6145f891bb564805c"
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
