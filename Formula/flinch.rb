class Flinch < Formula
  desc "Turn corrections to coding agents into repository checks"
  homepage "https://github.com/angelnicolasc/flinch"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.3/flinch_0.1.3_darwin_amd64.tar.gz"
      sha256 "46997b1c97ab4e9fec6c3ac006bb45aaf7bb02c1853e320d1034f02d8bf63258"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.3/flinch_0.1.3_darwin_arm64.tar.gz"
      sha256 "9dde154239916fe7e9088731abd1959a3ac9f76e5410ee2dbfeb1a673955cb3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.3/flinch_0.1.3_linux_amd64.tar.gz"
      sha256 "24b4a3211b49c0672b8558d0388c693f2472649f9e14339b0e6fcf5fec00e898"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.3/flinch_0.1.3_linux_arm64.tar.gz"
      sha256 "5f98ce8a7f9d4329b23de22190c3f56e72f98fa0d25ca2b78aad3810e41d644a"
    end
  end

  def install
    bin.install "flinch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flinch --version")
  end
end
