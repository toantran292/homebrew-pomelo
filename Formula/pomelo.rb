class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.198"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.198/pom-darwin-arm64.tar.gz"
      sha256 "6bf1d82deee13a1c6be97855b2266c95af6b99d7b15d102324a23a98f8d8df60"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.198/pom-darwin-amd64.tar.gz"
      sha256 "71c98932edb9c23de2b64cf0c7bdfc31a87654dfa0b00c737884b4e2e0069561"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.198/pom-linux-arm64.tar.gz"
      sha256 "2039d071efd2e3177a205773453d5161207ab489be395e37eb2611a0535f82ea"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.198/pom-linux-amd64.tar.gz"
      sha256 "9a611306020ed31c541e68f70f525dd61fd3db899a2f8b722f9c335d498760b4"
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
