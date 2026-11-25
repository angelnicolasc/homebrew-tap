class Flinch < Formula
  desc "Turn corrections to coding agents into repository checks"
  homepage "https://github.com/angelnicolasc/flinch"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.1/flinch_0.1.1_darwin_amd64.tar.gz"
      sha256 "2826ef00b3bda4f3bb0a7be486bd27ca4ed397b7206694564202f09f433b8133"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.1/flinch_0.1.1_darwin_arm64.tar.gz"
      sha256 "e76b3296a697fec80d1d58e4f6ef8080aff6ff46963cbe21882104cc95a373fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.1/flinch_0.1.1_linux_amd64.tar.gz"
      sha256 "339b5c1df5691d9259e9837c1aec64f0853d2e8b3c000e88bd7660f3b2b69c48"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.1/flinch_0.1.1_linux_arm64.tar.gz"
      sha256 "866d7fc4a68b1d9088a071825c46aba9b9f7af0a404fb20671ad7d0225e7babe"
    end
  end

  def install
    bin.install "flinch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flinch --version")
  end
end
