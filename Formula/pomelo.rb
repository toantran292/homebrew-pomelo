class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.209"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.209/pom-darwin-arm64.tar.gz"
      sha256 "0a1472a43f302766a46c5d1860d2d7265b994255af5ef74311a78e895800eb12"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.209/pom-darwin-amd64.tar.gz"
      sha256 "dc54a4970e99c8d9136cc1d8169bf4e4da2f21fe1d44463e7ffa20fa69388041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.209/pom-linux-arm64.tar.gz"
      sha256 "a2297ccf2ffdd6edc86543b66029c9393a7013ddb5404c32b7e80ee259fe8a24"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.209/pom-linux-amd64.tar.gz"
      sha256 "07a7d8df1ccaec1297d18d046bcd822cdb5780a3fff8e0aa5d4fa34ed1dd5cbe"
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
