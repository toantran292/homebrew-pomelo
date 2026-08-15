class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.223"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.223/pom-darwin-arm64.tar.gz"
      sha256 "d1bebb9c78bfd7df75fe4736e1c7e5d718913b95dd510bd22287e9cea3ef3b30"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.223/pom-darwin-amd64.tar.gz"
      sha256 "362bd7688c1d8abb92a20c7c6ba67d21088c460175d09ac841e936ced7780dda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.223/pom-linux-arm64.tar.gz"
      sha256 "e5a88a020dadac956b15b3826968bb2628891b65941c6e188bfa01d48f329737"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.223/pom-linux-amd64.tar.gz"
      sha256 "7d5872c68f7a41db8288f017dd4fe9f443c9533464252a879073a612e60ceaf8"
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
