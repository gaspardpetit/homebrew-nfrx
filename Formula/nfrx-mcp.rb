class NfrxMcp < Formula
  desc "nfrx MCP worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.2/nfrx_darwin_arm64_v0.9.2.tar.gz"
      sha256 "12ceeb6672fcfe8b8381b76ec195c0c7ea2176ce3d20926c0c2aa41a48bfce01"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.2/nfrx_darwin_amd64_v0.9.2.tar.gz"
      sha256 "cd081bfe99a74f1a0eaaad0a5c1424efa0a30ca981843b57ef1833125ec034df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.2/nfrx_linux_arm64_v0.9.2.tar.gz"
      sha256 "58263b71b4299b7160a1aacd36e6cd730a76de8ad5036354cd54159ee75777dc"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.2/nfrx_linux_amd64_v0.9.2.tar.gz"
      sha256 "cb3879a760b7c26dce84828ee7a9c9296fb8c5f97414e629932c8281f1fda419"
    end
  end

  def install
    bin.install "nfrx-mcp"
  end

  test do
    system "#{bin}/nfrx-mcp", "--version"
  end
end
