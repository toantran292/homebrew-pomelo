class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.210"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.210/pom-darwin-arm64.tar.gz"
      sha256 "f92a64c4bc97c21dbdc1e387db095c3e208bea0450a3680b90dc01ac41f8b141"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.210/pom-darwin-amd64.tar.gz"
      sha256 "d9ce4f413eca5df55162b5cafad9781d04d8991926066c058f14516644a819d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.210/pom-linux-arm64.tar.gz"
      sha256 "5af7152764492667f84e73de189c2204987fd6118012692f625038df817a4168"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.210/pom-linux-amd64.tar.gz"
      sha256 "e05d1becd86264b7f27c05d9e8413c751fee7cdda67caf9ef89ec4bcda920f9a"
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
