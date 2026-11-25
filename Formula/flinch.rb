class Flinch < Formula
  desc "Turn corrections to coding agents into repository checks"
  homepage "https://github.com/angelnicolasc/flinch"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.2/flinch_0.1.2_darwin_amd64.tar.gz"
      sha256 "62a5a492d25bb5544781b59c424f92d198ea0bd93516163f0912426dc66a94b6"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.2/flinch_0.1.2_darwin_arm64.tar.gz"
      sha256 "7924326564374766f964d7d1cd3e0ca209e0a36723cc7c16995a6f7b6674d579"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.2/flinch_0.1.2_linux_amd64.tar.gz"
      sha256 "9402d8d26c254845b23f390db5e13b85c2bf69ac4affa8e7d26f75508bf27549"
    end
    on_arm do
      url "https://github.com/angelnicolasc/flinch/releases/download/v0.1.2/flinch_0.1.2_linux_arm64.tar.gz"
      sha256 "39fcefaf6c5c19b1144e4fdfe54df9e15e102e807c20264980c370046bc50eea"
    end
  end

  def install
    bin.install "flinch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flinch --version")
  end
end
