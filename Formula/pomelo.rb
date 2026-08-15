class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.225"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.225/pom-darwin-arm64.tar.gz"
      sha256 "13e1e993625cd92ca88259d6de7896ed9b098ed2ae54090274c40eaf3140dbeb"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.225/pom-darwin-amd64.tar.gz"
      sha256 "63d585e27a11ea49387cd05f808898ca33d46d8eb1e1c7b12eba759904654dd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.225/pom-linux-arm64.tar.gz"
      sha256 "95f98b93bf267feffc59f7df145d09d983d1007ef24a113fa701c78d415118c4"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.225/pom-linux-amd64.tar.gz"
      sha256 "2f6afa85b76a12c2b7438d531e6ce67b23c7ec03c924a712ba68596ab5093be1"
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
