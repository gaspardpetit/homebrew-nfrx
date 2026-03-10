class NfrxMcp < Formula
  desc "nfrx MCP worker"
  homepage "https://github.com/gaspardpetit/nfrx"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.1/nfrx_darwin_arm64_v0.9.1.tar.gz"
      sha256 "c5df759043f7c57f0977734ae916abf671e82b883249cf4077a6cf1fc1c5e0bf"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.1/nfrx_darwin_amd64_v0.9.1.tar.gz"
      sha256 "2cfd10c3d3940517207b1c206151c333a96ecd92620805ccbd7fddcca894f87b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.1/nfrx_linux_arm64_v0.9.1.tar.gz"
      sha256 "791b8acbbfc8d11311b4fcef4fe124f28af5337f68ace7ec4a521ec55defeba5"
    end

    on_intel do
      url "https://github.com/gaspardpetit/nfrx/releases/download/v0.9.1/nfrx_linux_amd64_v0.9.1.tar.gz"
      sha256 "d83d9b10e1af27ca6c7bc61eef0d71de171316db86740e7532123c1fcb04b7a6"
    end
  end

  def install
    bin.install "nfrx-mcp"
  end

  test do
    system "#{bin}/nfrx-mcp", "--version"
  end
end
