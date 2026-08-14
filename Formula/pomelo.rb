class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.206"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.206/pom-darwin-arm64.tar.gz"
      sha256 "0134cb6f3f981cc73d4553b463b01c58ac4bff99d80181cdc52330912d3133fb"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.206/pom-darwin-amd64.tar.gz"
      sha256 "5e089c05421947af27cbfcf71078efc5d88ab84aab7783d23f9d815ebb30acd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.206/pom-linux-arm64.tar.gz"
      sha256 "ff70c85abd9751a9072cc8737bdc90a0275deb7f0b63297b48746a487ffa5760"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.206/pom-linux-amd64.tar.gz"
      sha256 "666239f2019ea4858535b4690ef1c4b52aceea66927f8de234136c90456e2058"
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
