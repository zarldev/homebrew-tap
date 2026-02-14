class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-darwin-arm64.tar.gz"
      sha256 "a3c26cdbe54179b7c44e6e9d58207978c098324fab952e36f166b58d287f5db8"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-darwin-amd64.tar.gz"
      sha256 "b106aec977f3caf335e443a2c612834ed4228dae560510f131b4797eb86b9ea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-linux-arm64.tar.gz"
      sha256 "4834f4d78d154bb32440bc4c18ad93de08c8ce697dbc211b7a8213af1af88ef5"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.0/tsk-linux-amd64.tar.gz"
      sha256 "91d1c3d77520fbdcfa326d0a87e04bee70bb281c4f437566182ce9da52adc65b"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
