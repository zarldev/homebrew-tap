class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.2/tsk-darwin-arm64.tar.gz"
      sha256 "853c9de021b29dcb2c00c00e74f19f9b177c63ad7225bcd5c2697e28858ebaf1"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.2/tsk-darwin-amd64.tar.gz"
      sha256 "634538394c5370c2917933724d80bfe4c5af6c245e77b95a1c6dacfb7af788b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.2/tsk-linux-arm64.tar.gz"
      sha256 "6193ee53bb8e98dfe4f0b8424f65b986c9fbee83d457ad7ee87a7a0d28dbaf31"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.2/tsk-linux-amd64.tar.gz"
      sha256 "b65878f3fec37720a6567d7ae92b70e026c317bc9d67de7fb8c42c8f878efc23"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
