class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.207"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.207/pom-darwin-arm64.tar.gz"
      sha256 "937bf5d849c3e7f181cd4188ab2cd0ac00d915ed935cb40822d263ba7bc31904"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.207/pom-darwin-amd64.tar.gz"
      sha256 "2fa47cdea6e4f50658e68cc5e17cfed91ee31b6098f09bdcc55a225bc13fed36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.207/pom-linux-arm64.tar.gz"
      sha256 "e2fd582c61d2f82174a489c65007f3d6487fcb859d01d3373908131c083e1a00"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.207/pom-linux-amd64.tar.gz"
      sha256 "554b1881090f2e222db6ebfb8f516b6be5fb3980eef7b54957430f84a93af8e2"
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
