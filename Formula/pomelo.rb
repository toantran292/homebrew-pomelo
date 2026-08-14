class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.205"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.205/pom-darwin-arm64.tar.gz"
      sha256 "97f4ce54fe5946f179b3f8991b5f42e20f119404a502dac2d342a495056df22a"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.205/pom-darwin-amd64.tar.gz"
      sha256 "baa44a33ebd331609b7e4d37043a4d1b664e08e7f10d7942049104f054c8c623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.205/pom-linux-arm64.tar.gz"
      sha256 "3a0b5f5f92d6e38225e68d2a1b3d6c7fe90c5dd380b26230dcd4c41c4f9a1cd5"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.205/pom-linux-amd64.tar.gz"
      sha256 "a01931d53d895a4ca491a29413a10916a7525c4fab72321ca05cf52fc357eb61"
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
