class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.166"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.166/pom-darwin-arm64.tar.gz"
      sha256 "186271c0d47f44bf3c130f237ea1dd6e81f8ca473e126ff34800d55ddb88a843"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.166/pom-darwin-amd64.tar.gz"
      sha256 "2309aa70b0b6b7bcbe7a6dd00e7924926d843f343ba552c31c12608d970d8df8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.166/pom-linux-arm64.tar.gz"
      sha256 "df766f4b77781e7746f8cf961479fbe69d08546b62515fe12f0c959307b7e0ef"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.166/pom-linux-amd64.tar.gz"
      sha256 "d95fdc9490a5940ca78a2b349a1b56025b6d03727ccbb4c8d9394009495e7a1f"
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
