class Nfrx < Formula
  desc "nfrx inference broker server"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.6/nfrx_darwin_arm64_v0.9.6.tar.gz"
      sha256 "f62f8e45f2926b6ee763c9dab88f7b736bd5e4e08f90b1e9676e851fc2f5908a"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.6/nfrx_darwin_amd64_v0.9.6.tar.gz"
      sha256 "e42dc576d37913be20590cd75d24cd127fd43e11927ffbbafdf2e418af2e1610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.6/nfrx_linux_arm64_v0.9.6.tar.gz"
      sha256 "7c6cf5ec01ac6ca4d117dc45251efc692505ea07bdf9e17a5d5319d669baa998"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.6/nfrx_linux_amd64_v0.9.6.tar.gz"
      sha256 "919f935e0cd1f85021daa67ca586f43e51af862f432d7cef428fed594642b9b3"
    end
  end

  def install
    bin.install "nfrx"
  end

  test do
    system "#{bin}/nfrx", "--version"
  end
end
