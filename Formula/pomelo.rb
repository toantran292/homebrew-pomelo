class Pomelo < Formula
  desc "Per-branch dev environments for you and your agents"
  homepage "https://toantran292.github.io/pomelo-docs/"
  version "0.8.227"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.227/pom-darwin-arm64.tar.gz"
      sha256 "fe005b657b7674e5b43ca6ef85299b232560bda420ed1c20c5e9b70d2c67a1e2"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.227/pom-darwin-amd64.tar.gz"
      sha256 "ddeafda536926bf259b58b11b7801e54b6657f84bbd695fc9eef0ec2aea59e5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.227/pom-linux-arm64.tar.gz"
      sha256 "c6d98d05b6bfc6a95019ebc59c40af547586be529c922a3ea1388a60dd636354"
    end
    on_intel do
      url "https://github.com/toantran292/pomelo-releases/releases/download/v0.8.227/pom-linux-amd64.tar.gz"
      sha256 "7a3c250ad066e9d1fb1209e21ce00590ab4410d657663f4a7cb02737b3a883a4"
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
