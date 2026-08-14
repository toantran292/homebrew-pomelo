class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.208"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.208/pom-darwin-arm64.tar.gz"
      sha256 "03df9ce56ac1f63c63fdd1658f5c1b97a5ae936058bca3b8541508d818801cdd"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.208/pom-darwin-amd64.tar.gz"
      sha256 "239b1e80c4582171dba18765147b58431b69a8a2563b3b50979202b7791b6c00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.208/pom-linux-arm64.tar.gz"
      sha256 "5845c711fc6107d659a9c92a6b46c33b836ba82ae1850f20068c00e2ab3002b9"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.208/pom-linux-amd64.tar.gz"
      sha256 "c81f7f3f16548a70772049ce9704c56d5c080c53af565fb70eb8ab2f49598ea1"
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
