class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.168"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.168/pom-darwin-arm64.tar.gz"
      sha256 "c52ee7740a440287c71704df739765e5a4a03a930fdb38688ded18318d6ae787"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.168/pom-darwin-amd64.tar.gz"
      sha256 "58b0aa2341fbf057f85f893af985bf2a25a421695bec6c25abebf31d92315efb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.168/pom-linux-arm64.tar.gz"
      sha256 "7c7fca032ddeb74a24c8769ad6d53e5c398c8d563bc800917da76b178ab99a67"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.168/pom-linux-amd64.tar.gz"
      sha256 "a330b5f2416554efa912e95dd0499a4ee751fa0a68860d026529cddb66278527"
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
