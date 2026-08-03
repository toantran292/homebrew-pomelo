class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.179"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.179/pom-darwin-arm64.tar.gz"
      sha256 "ed9797b02bcec963bdfdfdc2928ff7d6916a3fbe6b5be326df1293d504ec0373"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.179/pom-darwin-amd64.tar.gz"
      sha256 "e2f97b69014ccb6e9ae65c8bbe43f46251a82a701a0983d0a535ff6c0cac7d1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.179/pom-linux-arm64.tar.gz"
      sha256 "ecfad8fa7820f6f4228d48f69d8c1c03a161a1538d1088f2a44712315335c47c"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.179/pom-linux-amd64.tar.gz"
      sha256 "6267d677c508a1e536a56ebe04815afcdb4d7a7022508066d0b2164a726c7c27"
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
