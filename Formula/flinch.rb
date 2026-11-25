class Flinch < Formula
  desc "Turn corrections to coding agents into repository checks"
  homepage "https://github.com/angelnicolasc/flinch"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.0/flinch_0.1.0_darwin_amd64.tar.gz"
      sha256 "85d92be6eec357cc4ae9a044c12db494bde74af4f15916815caee9de527c4fcc"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.0/flinch_0.1.0_darwin_arm64.tar.gz"
      sha256 "dd9578d8b35adfd41e88cd563de32d0391ca5c7a1ff4b7ac19bc4d58c7f4b094"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.0/flinch_0.1.0_linux_amd64.tar.gz"
      sha256 "b53f4fecf67cfaa3a47b66df01a8cd519b1ff724380a8b2248814c5fd9fb2d13"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.0/flinch_0.1.0_linux_arm64.tar.gz"
      sha256 "72bc09159ae10dc32086222b773ad2297173951f7248e9a044cb53ecc432f555"
    end
  end

  def install
    bin.install "flinch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flinch --version")
  end
end
