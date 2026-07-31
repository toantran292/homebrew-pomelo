class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.172"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.172/pom-darwin-arm64.tar.gz"
      sha256 "5231c6203264d570a3fc88ab8db83bc151bbfc88cad09c077fbd2a3240b9668e"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.172/pom-darwin-amd64.tar.gz"
      sha256 "dd063c6a5a8665a422645e3a11213c4372009efd5c2facbebe5bd4497c80bb96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.172/pom-linux-arm64.tar.gz"
      sha256 "0f1d5514136710dbde25aa243bf2e47d91f16ce3b9a234066fbe09d324edcf94"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.172/pom-linux-amd64.tar.gz"
      sha256 "4b940cd26ac8707cc272409b582aab2fb4e8a2446da3413099b2855b9d30114d"
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
