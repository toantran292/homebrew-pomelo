class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.189"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.189/pom-darwin-arm64.tar.gz"
      sha256 "3d94a65c6d53205d1be4c8bdeecf43834ba546735478868026d6439718f664eb"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.189/pom-darwin-amd64.tar.gz"
      sha256 "88261134f71d28f171d0a0493aa417cf64651e97463829688c1a49e351648ec8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.189/pom-linux-arm64.tar.gz"
      sha256 "6550d8c1029b6685764879a7e4f5f40697ce6fc562e6b0e37dac19d73a4b36e7"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.189/pom-linux-amd64.tar.gz"
      sha256 "93301f890ad2d4d94e30a705611ea706d6a7a92942907755acab14cdb1d7157e"
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
