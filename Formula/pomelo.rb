class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.181"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.181/pom-darwin-arm64.tar.gz"
      sha256 "ed8fa22e46b46899abf97760397461e1d4ee70aeddc80d3d288bceb32c5b4402"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.181/pom-darwin-amd64.tar.gz"
      sha256 "7d17bb84d1c52c2b47be60ce66eb6005e22ad10ae621f99265938febe6da44fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.181/pom-linux-arm64.tar.gz"
      sha256 "e9de9c974c09be636a9ebcc9133d26dd2f33068ba160dd9870b622a4806feb58"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.181/pom-linux-amd64.tar.gz"
      sha256 "d6785df7092afd987e2b55a7213257ed76ea75f8d025f7aa53d7ab6a4497000a"
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
