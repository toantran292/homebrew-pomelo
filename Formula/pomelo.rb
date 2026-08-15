class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.224"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.224/pom-darwin-arm64.tar.gz"
      sha256 "1aa3bcfb1b053c2ea0233c0515c27504bf4d0bdf4010716e3a3ad1f1847c3090"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.224/pom-darwin-amd64.tar.gz"
      sha256 "24d154ea24ea806008f03bdd3330b014f1523345c4b5880b381a94b29ea0f7a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.224/pom-linux-arm64.tar.gz"
      sha256 "501e500e103701bc80e4585b6179c4a78f41ce9c4c68f4e36fb3f1f0ea9cbd18"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.224/pom-linux-amd64.tar.gz"
      sha256 "cb086afc8e0ead3a32a438ffedbaaaf87e3622a2c93a75b46e7ec1a2496d7fc5"
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
