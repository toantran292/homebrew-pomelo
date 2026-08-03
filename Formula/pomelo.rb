class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.182"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.182/pom-darwin-arm64.tar.gz"
      sha256 "93537c83faaacfb013936011948ef5c1ce04a48d046b49798526269ef3ca65c4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.182/pom-darwin-amd64.tar.gz"
      sha256 "561eb5d7f4c9b420f319461cf64deae92cacfef9c8c4d673b5447eba871bc6ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.182/pom-linux-arm64.tar.gz"
      sha256 "89277a222011f6b7fdbdeba0cc4d1f95b87d114664871f449e25fd130c9b911b"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.182/pom-linux-amd64.tar.gz"
      sha256 "ce41b0be76d159afe7d109e47bc58eba3f1b737a4c6fae2cba60715785bcd9f9"
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
