class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.161"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.161/pom-darwin-arm64.tar.gz"
      sha256 "b17b149e48afdaac360eb19310d9d607cb332072c096cb1c65e142c312259b0b"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.161/pom-darwin-amd64.tar.gz"
      sha256 "c91f91c1b5f0e570829047b100896233017d63127796c5d0dc8e857823b1a69c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.161/pom-linux-arm64.tar.gz"
      sha256 "18c3cf2b31ebfecad9daf34bec4ce10f4130594d2c75fe00af2a7ad5a7c03aa9"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.161/pom-linux-amd64.tar.gz"
      sha256 "c3c23bbb1e0d1278fff4332f42953802655938917e9fa2e5d4e964b7a8e780c2"
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
