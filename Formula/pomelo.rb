class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.190"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.190/pom-darwin-arm64.tar.gz"
      sha256 "47f00afe124e28c2d2639e8d6668be61e3444833f8a012359c58ba93221c3c4a"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.190/pom-darwin-amd64.tar.gz"
      sha256 "beaae864583199c85fb2231ddd842c6e20b9304587a51af4f939665f72cf4fdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.190/pom-linux-arm64.tar.gz"
      sha256 "d441c384c63f06e42013fd45794d61d4481ef2840f5276cde43fa6d62325ebf9"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.190/pom-linux-amd64.tar.gz"
      sha256 "ce3e464a3d8a165063d331775f1e1f9a7d07ea9d1733e7695c97a2b1ef13d79d"
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
