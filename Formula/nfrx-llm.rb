class NfrxLlm < Formula
  desc "nfrx LLM worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.0/nfrx_darwin_arm64_v0.9.0.tar.gz"
      sha256 "fe1496551e0dd8043f997d9c3a799b8ccad3b96bcaf2d6b5e83e3be64294eb67"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.0/nfrx_darwin_amd64_v0.9.0.tar.gz"
      sha256 "3c3644b7e802e418696525438dc6465f4ab7bc314969a138fed03ad70ae6ccd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.0/nfrx_linux_arm64_v0.9.0.tar.gz"
      sha256 "4c3b6e17dbdb6564bc638f846e1188b4b2d5452bd5a25f969b4e11054eb52b76"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.0/nfrx_linux_amd64_v0.9.0.tar.gz"
      sha256 "31576620255bab945775e37c3464910f7b5dbd25aca49ddcea7f106e8ff38c3f"
    end
  end

  def install
    bin.install "nfrx-llm"
  end

  test do
    system "#{bin}/nfrx-llm", "--version"
  end
end
