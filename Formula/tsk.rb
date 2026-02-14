class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-darwin-arm64.tar.gz"
      sha256 "ca72edc582aa89ecb7927f00a6bf504075633fd4013e8d5b237092766c48c063"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-darwin-amd64.tar.gz"
      sha256 "867dfb66c409efe8d0302fd708aa8e959501f4d154a3ce4288777714f3c5431f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-linux-arm64.tar.gz"
      sha256 "cae04fd38164cee4404c2d765ec1870daf55380f357d51a9ea38ac14f817d153"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-linux-amd64.tar.gz"
      sha256 "3d4c999b8fcf810e5c908d6232122be3bd11a74a1fbef5c6aceddbb1cf982a06"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
