class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.164"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.164/pom-darwin-arm64.tar.gz"
      sha256 "e8aca91029ba9c65c5b0fb75abccbd898d4988b1880da404cc544575e1e695be"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.164/pom-darwin-amd64.tar.gz"
      sha256 "c2a25764190ea1e91ef52aa52097be7fcdaad26dea7acadd9f5b19d9388ce800"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.164/pom-linux-arm64.tar.gz"
      sha256 "516a0a39899db7522c831d4e1f91baef0f15ccc770e7c8d69b7df7b6e63c53e8"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.164/pom-linux-amd64.tar.gz"
      sha256 "abff1b99b70188fb2e82aa050b56db43a276878483559ccdd59bac67d9f4509a"
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
