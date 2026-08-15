class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.216"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.216/pom-darwin-arm64.tar.gz"
      sha256 "302468073ec4f628b2da0b042d2d1ce4d4aa4d9f976fb1ab9f01e991a706b6db"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.216/pom-darwin-amd64.tar.gz"
      sha256 "72e3d330e1af441a1e6c5d94b671b8946d5c783aed359fafa0585fab91a77421"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.216/pom-linux-arm64.tar.gz"
      sha256 "d5f482cec1b599bc31444dd40bbfe14eace5f38fb52bd67a78e55501cdfdbedd"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.216/pom-linux-amd64.tar.gz"
      sha256 "24f9ee5dc2f8143d9fffc10ab97400f286360e77644aa1688f68ade73fe686d1"
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
