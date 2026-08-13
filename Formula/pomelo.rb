class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.193"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.193/pom-darwin-arm64.tar.gz"
      sha256 "56aa02a0ad5404689c72dcf0dacfdbc0a377f8abab675acdc5c5e4f8c7fefe3d"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.193/pom-darwin-amd64.tar.gz"
      sha256 "b68b5d7f73299b69b5203521958d18dd6a0ee15074f31b3260226f085dac8521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.193/pom-linux-arm64.tar.gz"
      sha256 "282c4d7b2f2df3e255d88ea5468a5535a66c219dcd9301beb1102efbe616ec12"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.193/pom-linux-amd64.tar.gz"
      sha256 "19b59a4517d5e5f17f91fbcc4b8e2c09b6fb679f241c288f3814f5f69d12fe68"
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
