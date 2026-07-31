class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.170"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.170/pom-darwin-arm64.tar.gz"
      sha256 "db2b55a7677f4d9b1c6d542f99cb34a01afee758f4e87187ef30afb54f31077c"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.170/pom-darwin-amd64.tar.gz"
      sha256 "5dde8d5e5a0499df0d4f8ce747571579558d38004470589f71e1d2079ed3f22e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.170/pom-linux-arm64.tar.gz"
      sha256 "b79b1521943ef22d8c9790822b9f108476e8e4e489c2edd091bdac0a0800deff"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.170/pom-linux-amd64.tar.gz"
      sha256 "c41e51a41dcbafb65890b5cb02e24aa24e1857b9b895cf7ed4fa350f3b84a220"
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
