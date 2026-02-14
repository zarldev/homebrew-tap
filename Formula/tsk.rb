class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.1.1/tsk-darwin-arm64.tar.gz"
      sha256 "737c5602a0bd10e15db987e2af46446e2f3aa47fc128ed9ba23b0d00a138cf7b"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.1.1/tsk-darwin-amd64.tar.gz"
      sha256 "db01bbd682ed7df6c8d46e52f400278636dea90aac86c67dffad11d9b4567c3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.1.1/tsk-linux-arm64.tar.gz"
      sha256 "14097357cc8e7bccf070923628faaf7658261436015889017a44973a6aa1f400"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.1.1/tsk-linux-amd64.tar.gz"
      sha256 "28b00b7f405f85b1abd45f7136bafae447465a1ff7a42143b3c694ab66a58b4c"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
