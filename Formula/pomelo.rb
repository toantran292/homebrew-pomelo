class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.6/pom-darwin-arm64.tar.gz"
      sha256 "a522fcb6ff22e1a576c127ebd670765ad8e70a37bc9bbea97d5932353442c159"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.6/pom-darwin-amd64.tar.gz"
      sha256 "2ee8964f0e8819984df5e2d69519a25ca174009a0c3290f4652c74d4d6129a8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.6/pom-linux-arm64.tar.gz"
      sha256 "f10d8d1b17061234f927c4268aeeaeeb74e56a7dbff8038936054b69779fe327"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.6/pom-linux-amd64.tar.gz"
      sha256 "babb2b40cd2d67237b53337dfc1ce2f39d6202dffa2f55d6239dca5ba4f39587"
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
