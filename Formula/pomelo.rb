class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.163"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.163/pom-darwin-arm64.tar.gz"
      sha256 "c9a2e425cae49dd850376461dee4f0d1cfb8eeaccbc248628eb619afb96a35ab"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.163/pom-darwin-amd64.tar.gz"
      sha256 "bb730398bc50ed739f6f83412f6f6bc48eeb17276c1b0e0253d9a8bf3f2c0920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.163/pom-linux-arm64.tar.gz"
      sha256 "d7bd83ec277dc0aa210a05068bca351c3350a0a3610165f5738adbdae569f539"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.163/pom-linux-amd64.tar.gz"
      sha256 "d8da00184a21120dc9f19d9510b28ded9fa0f7aa59f01775b06ef8c5b555f08b"
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
