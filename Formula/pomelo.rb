class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.3/pom-darwin-arm64.tar.gz"
      sha256 "00a09d1b0687836bb320f1dbfd9c011f9d8282257b256fa47ad184c1395b1cd1"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.3/pom-darwin-amd64.tar.gz"
      sha256 "a9c7fcbdc5ef1281c935cba432ef657a0243c112775a3a758d29aed1b57b2362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.3/pom-linux-arm64.tar.gz"
      sha256 "7177dc67541bd88437ea085a17dec2fb09e45f1a291dfad426551f3614e99fc2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.3/pom-linux-amd64.tar.gz"
      sha256 "448dbf7b886247388c12084700b24b3b96914bd5a99cb7094758d094345f219a"
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
