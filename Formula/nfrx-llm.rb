class NfrxLlm < Formula
  desc "nfrx LLM worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.4/nfrx_darwin_arm64_v0.9.4.tar.gz"
      sha256 "265bcb8d897711856807019241886a40a706f6c10b5344ca9697b37f60d0435f"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.4/nfrx_darwin_amd64_v0.9.4.tar.gz"
      sha256 "ff15e800bbe90036229dab9a2f07a022c85fd1ae535e841efb5fe5cad7844226"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.4/nfrx_linux_arm64_v0.9.4.tar.gz"
      sha256 "9d547a26d4871c31ff22a6a8193c0c3ada2b4c5af9dfff192dd2b13464eca762"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.4/nfrx_linux_amd64_v0.9.4.tar.gz"
      sha256 "e0e35b46a3063ea676d2dc3feef9728849515bbcd9d54d9df5a3cb7ce4fe6a47"
    end
  end

  def install
    bin.install "nfrx-llm"
  end

  test do
    system "#{bin}/nfrx-llm", "--version"
  end
end
