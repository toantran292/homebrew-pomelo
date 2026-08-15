class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.226"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.226/pom-darwin-arm64.tar.gz"
      sha256 "d9a27b26e38c524bd7fed41659daeb598919aee36e8b6ef70d829aa6184ceab1"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.226/pom-darwin-amd64.tar.gz"
      sha256 "e06afa64fe0e2ffde28a6b81e2c36c4ecef2638c45eb06d8d230a43c6d1c71a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.226/pom-linux-arm64.tar.gz"
      sha256 "e211395c34da61046200a27918f0c824183a3ad2c6ccf903887f08c07e44f5c2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.226/pom-linux-amd64.tar.gz"
      sha256 "1da5fef9a7ce028a4c22ecdbfc3d3373dda77941a75c1ace1017cc9a481200c8"
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
