class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.194"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.194/pom-darwin-arm64.tar.gz"
      sha256 "697736776c230037c0c730f32d7876aec6773e2a277a2c9a41c5e73f9ce12de6"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.194/pom-darwin-amd64.tar.gz"
      sha256 "365c7853306ce41116bea9e3d9006a2bb0cae9254b6557bcf049ac2fb6da4c96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.194/pom-linux-arm64.tar.gz"
      sha256 "5c357e9a4c30f997caa6e011d43faafe786bb42ee78b415e6a08fcfd5c14154b"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.194/pom-linux-amd64.tar.gz"
      sha256 "7041189c682ab874152660328809ee0e3b273d5527f8be60c823f22b5efeb212"
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
