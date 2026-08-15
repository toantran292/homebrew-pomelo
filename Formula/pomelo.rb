class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.222"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.222/pom-darwin-arm64.tar.gz"
      sha256 "b65e8219edadac7ef3c7ac01e5331b0f1fcf68bdf65725b62334206b7e6112ba"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.222/pom-darwin-amd64.tar.gz"
      sha256 "611cf14073b89a35d8f5b157750e0f8d44e5c66c3c7d9c7e7578b2f4a83dbc5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.222/pom-linux-arm64.tar.gz"
      sha256 "04c0ebece87198cbe774ca01938685788ecd1dd06254e14cc85e739818d9e769"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.222/pom-linux-amd64.tar.gz"
      sha256 "f264eae0b8799a077c7e1993e8175b258908bac8b39461861b7ea00e88652396"
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
