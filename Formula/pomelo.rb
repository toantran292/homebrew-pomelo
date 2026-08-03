class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.180"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.180/pom-darwin-arm64.tar.gz"
      sha256 "1ade632bd3434cc2ce100aeb99fc2381d7872b135308ee76855d40b3ee2dffc4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.180/pom-darwin-amd64.tar.gz"
      sha256 "08e960df6486adb79fd45604faffbe14cc9aaee7eb57097293b8782abd674f87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.180/pom-linux-arm64.tar.gz"
      sha256 "d720d959ce67bd20759b5d7f47c42ad5ced4902db0da03bbccb490afd17db63d"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.180/pom-linux-amd64.tar.gz"
      sha256 "dbfc63fb31dedca692182cdcd89d93c0af80304300cea3d1921f5d47f8c36989"
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
