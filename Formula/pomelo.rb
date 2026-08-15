class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.219"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.219/pom-darwin-arm64.tar.gz"
      sha256 "a95ec7ede738c7839d59f6ee1cea435233c32946e3c565e3f9aeb455c71113a2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.219/pom-darwin-amd64.tar.gz"
      sha256 "64ff65b309b24738ddd4c2ef8b48f4849fc7bd4433835efff41165db30527744"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.219/pom-linux-arm64.tar.gz"
      sha256 "16134b360ee805b298d4c33c7f83d1cc507dfad775124dc2d22607c33084e691"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.219/pom-linux-amd64.tar.gz"
      sha256 "e00ad817033c67be8cc9ce8f972d2b012afb6e251f9419957639d0f8abf9347c"
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
