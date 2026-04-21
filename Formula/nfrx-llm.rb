class NfrxLlm < Formula
  desc "nfrx LLM worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.5/nfrx_darwin_arm64_v0.9.5.tar.gz"
      sha256 "756e306206874f60b65a7360b5c5b678d54e27f23ecbc42cc46221e174c18beb"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.5/nfrx_darwin_amd64_v0.9.5.tar.gz"
      sha256 "cd0b5290b84d0141b81aeeba478ccf23e0a80ec2ece230415f5437e14cb5e90b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.5/nfrx_linux_arm64_v0.9.5.tar.gz"
      sha256 "5d22a2d6fcedfc049e5fdda7ef62f55949287d64328913c55e35454e200a3494"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.5/nfrx_linux_amd64_v0.9.5.tar.gz"
      sha256 "2cd2836cf527c192e83f5a56e2eac5eafc7fbfc67e9773f40fffab8de9eaec36"
    end
  end

  def install
    bin.install "nfrx-llm"
  end

  test do
    system "#{bin}/nfrx-llm", "--version"
  end
end
