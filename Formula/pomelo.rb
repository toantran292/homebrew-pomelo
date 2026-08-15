class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.218"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.218/pom-darwin-arm64.tar.gz"
      sha256 "603be8873c4b99bc32705117c4a236a9e4babaa3d22fe9cc7885339e0d780ac3"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.218/pom-darwin-amd64.tar.gz"
      sha256 "708d0f2004593e13c5516c055c48e45d04babc423fc24f20cbe4e55a02646d48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.218/pom-linux-arm64.tar.gz"
      sha256 "b052b31fee0b31ecbe002887953b47ddd67a74c4a25d35f9caaf61bec3c541cb"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.218/pom-linux-amd64.tar.gz"
      sha256 "e8607c6eadd8784ba91d4e93525d4d77a36452afd204592cae69703da06df586"
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
