class Flinch < Formula
  desc "Turn corrections to coding agents into repository checks"
  homepage "https://github.com/angelnicolasc/flinch"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.4/flinch_0.1.4_darwin_amd64.tar.gz"
      sha256 "077be4f2baaa5fe61acd39373083041db425b89f5408b5a3bceac58011e3b548"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.4/flinch_0.1.4_darwin_arm64.tar.gz"
      sha256 "2375554f19f956d5f6a0798cda2aa0d2c4b76147044c62a11ce71439d4186090"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.4/flinch_0.1.4_linux_amd64.tar.gz"
      sha256 "43c8f732f45c0febcdab588e5815aaf06e6c5317583a172d4e611e738bf43cb3"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.4/flinch_0.1.4_linux_arm64.tar.gz"
      sha256 "d580b1d9490c2334b6fb73751a4d633767c2a826347a7376d24b5d8ce463597e"
    end
  end

  def install
    bin.install "flinch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flinch --version")
  end
end
