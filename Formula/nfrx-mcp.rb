class NfrxMcp < Formula
  desc "nfrx MCP worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.8.1"
  license "MIT"

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

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.1/nfrx_linux_arm64_v0.8.1.tar.gz"
      sha256 "1ffd40278e5fdc6a77e1020bf9436dfb319a7d3733f071efe1b0095163515028"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.8.1/nfrx_linux_amd64_v0.8.1.tar.gz"
      sha256 "b43563cd0833c0db3e00f7fc0aba1c568feb93b23d264a167eaf95677d224c63"
    end
  end

  def install
    bin.install "nfrx-mcp"
  end

  test do
    system "#{bin}/nfrx-mcp", "--version"
  end
end
