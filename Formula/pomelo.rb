class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.197"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.197/pom-darwin-arm64.tar.gz"
      sha256 "42d60b2ed5ce73aed7db7ff26537580a9249741e32cefa68c1f2d0e43672ce09"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.197/pom-darwin-amd64.tar.gz"
      sha256 "be13879ed706db03dcdcf966d4c99f3fc5008a4705b61deaf91c665fecd94de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.197/pom-linux-arm64.tar.gz"
      sha256 "29ac93246209b7825929d1d53062af5d3586c75be0504485c9d1838b040b4f15"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.197/pom-linux-amd64.tar.gz"
      sha256 "5148d5cc8cbaeb56c5bc11d1082015b990a66f3b6f35ef35c125d48f6d4fb75e"
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
