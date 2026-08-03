class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.184"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.184/pom-darwin-arm64.tar.gz"
      sha256 "ec6a33122d10b9ddbbfec751ba6a39dceb991dd82314b450c0ff996af24b3866"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.184/pom-darwin-amd64.tar.gz"
      sha256 "b75c5477618dab5bcb34a7df1b2b4a7ab8bee2cfbe5b6d5a4ece37539a3a9091"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.184/pom-linux-arm64.tar.gz"
      sha256 "7db350066e479483de6bc2b1e32473e78d76205a024c851eab1d9868cb1326c4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.184/pom-linux-amd64.tar.gz"
      sha256 "f4910bde72bf10dae09a316bc8cc2afed0caa33ba3a4ceb3916c1dde1892963d"
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
