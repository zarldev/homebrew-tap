class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.1/tsk-darwin-arm64.tar.gz"
      sha256 "4a9769218ea26d9a19c59880a00cdd18d714bb76bbd5899e1bd765963adf9954"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.1/tsk-darwin-amd64.tar.gz"
      sha256 "5d4add7fcc4b269c269f4c5e336991620a02c2de159578246f61ca27170f87d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.1/tsk-linux-arm64.tar.gz"
      sha256 "e29bfe409ae3d6c3cfb0d1763c1a79b1f2d8d1b9451406b52b6de834231745aa"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.1/tsk-linux-amd64.tar.gz"
      sha256 "74ae6cb780161ea4a9a2e83497f81dcd07881e80733b4403892ba358543fed76"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
