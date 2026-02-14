class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.1/tsk-darwin-arm64.tar.gz"
      sha256 "c9908fffb8d460dd40fc8d1668350c28e80d6b142647fd3b1f896f83f03d5465"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.1/tsk-darwin-amd64.tar.gz"
      sha256 "7ce82533761ca31b338ef8fed60968fc5777d6e5513b2261c4f74d0b71a22527"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.1/tsk-linux-arm64.tar.gz"
      sha256 "59c375cc8e3b2e595bf27bc71cbf624e363034467c04cdf0310e7f98b94a364b"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.1/tsk-linux-amd64.tar.gz"
      sha256 "b6c257a42239a2aa0c1ae51cb4c55e5cae6397a4463a3b81ade75fc088052fe0"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
