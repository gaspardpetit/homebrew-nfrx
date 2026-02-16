class NfrxLlm < Formula
  desc "nfrx LLM worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.1/nfrx_darwin_arm64_v0.8.1.tar.gz"
      sha256 "13a78025d767b9b2480727ab15a3b7e143917d349b58ee4e6d594dd328bdfee4"
    end
    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.1/nfrx_darwin_amd64_v0.8.1.tar.gz"
      sha256 "7a1c52a6621113fbe070f746dae22bf594f4c0227e8d162cc3460c9c59e12b38"
    end
  end

  def install
    bin.install Dir["nfrx_darwin_*/nfrx-llm"]
  end

  test do
    system "#{bin}/nfrx-llm", "--version"
  end
end
