class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.217"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.217/pom-darwin-arm64.tar.gz"
      sha256 "48fc3f9ed2b7413d8efd0632f495ad0ecd9ae91e0cb02764165e2528d81ecd14"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.217/pom-darwin-amd64.tar.gz"
      sha256 "e6a64613b59656700e1f0f24fdaddaed5736c48a5270da512a3dba954b98a9f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.217/pom-linux-arm64.tar.gz"
      sha256 "45558b0b3c4b747e748506f8c9ac85168671e267f9e6d3a89f6b1f8b898fd2d6"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.217/pom-linux-amd64.tar.gz"
      sha256 "6af1230c569dfd27d55d0232b25bd4518efff74fcdf4900615408bf64246a4fa"
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
