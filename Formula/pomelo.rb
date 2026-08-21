class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.5/pom-darwin-arm64.tar.gz"
      sha256 "a131913f5f96b779cb2f6553d1b341a68280fe2c164a08689f2f541ecc3803ea"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.5/pom-darwin-amd64.tar.gz"
      sha256 "7959b0a82e70758d797a9377fe7603ff1c94ec26fb86f9679e95265ec0487f19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.5/pom-linux-arm64.tar.gz"
      sha256 "9f684cf39a80187c11a2f8ed5102bf1aa834cc3c005d1dea7c6fcaf27d774605"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.9.5/pom-linux-amd64.tar.gz"
      sha256 "ef212e55eb93d484e7378c46bd0c50501e48b0da20eed505435b787442d1f23c"
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
