class NfrxLlm < Formula
  desc "nfrx LLM worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.2/nfrx_darwin_arm64_v0.8.2.tar.gz"
      sha256 "f7c1f62f79fe06e5170c8104634c6bb38c61f1799b8d5c1908e77eb8b36aa275"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.2/nfrx_darwin_amd64_v0.8.2.tar.gz"
      sha256 "764c542ce1f92acf2cf04e8ccf58fe9258c204ad23263c08dfffc4c8bcc117b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.2/nfrx_linux_arm64_v0.8.2.tar.gz"
      sha256 "3df75ace9214710cc3e8bf39682a71a547e300e19f28ea2b2d0a708cbed55636"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.2/nfrx_linux_amd64_v0.8.2.tar.gz"
      sha256 "ee5996648cf1ebc3adc8460153abd57f5e1b9066dbed24c4d6b84ddc7da656c0"
    end
  end

  def install
    bin.install "nfrx-llm"
  end

  test do
    system "#{bin}/nfrx-llm", "--version"
  end
end
