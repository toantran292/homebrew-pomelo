class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.186"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.186/pom-darwin-arm64.tar.gz"
      sha256 "92e336740099af6b32c3b3614618a09f1384a36ce9a27c84e31e850023b4aeb6"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.186/pom-darwin-amd64.tar.gz"
      sha256 "31dd71aab4a3982aeffbac1333d61ab49309a7dff94017a86cccfd1d59a2df49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.186/pom-linux-arm64.tar.gz"
      sha256 "1258a4a7a50744587bcfd4daea719bf29205c24ed2351016812b60d86714e749"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.186/pom-linux-amd64.tar.gz"
      sha256 "4c635b09860a158846877418e1ed9444f938d2180a62a699ca1c0f0e391c3190"
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
