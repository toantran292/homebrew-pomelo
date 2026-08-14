class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.213"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.213/pom-darwin-arm64.tar.gz"
      sha256 "62f8a40e7367bc548a27998a85b627342d0f90ef9432f0c836f3d5b8e910940f"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.213/pom-darwin-amd64.tar.gz"
      sha256 "59375aaa4d17f13fa43131536a87cec35c2968aabe21cc987ad6b5fb65baf2fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.213/pom-linux-arm64.tar.gz"
      sha256 "88d0f289f20638c8822f1d685bb891e16119df24d03f75a83072b3abe84ce649"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.213/pom-linux-amd64.tar.gz"
      sha256 "da325ed761b8ae41fe0a9040fc96839367a31ede21f9a67484cbdda4c8c0ac96"
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
