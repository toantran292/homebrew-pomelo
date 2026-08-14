class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.199"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.199/pom-darwin-arm64.tar.gz"
      sha256 "7f36f0ac1178232b8d0a4b4dc9971e49676e7736e8783ba9e0efb23376b9818f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.199/pom-darwin-amd64.tar.gz"
      sha256 "71caead6f399459a6166ad2aa77653d9c77ec3b64a150a4bce53eeb4f87f7d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.199/pom-linux-arm64.tar.gz"
      sha256 "1d8ca1ce221d9f26291cbb096296b695bf4beb421b6530448ec4ee95a076196a"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.199/pom-linux-amd64.tar.gz"
      sha256 "e21864c5aef00ee5d0448476a8295e36ac8b2f871a400ba11541942b410da71d"
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
