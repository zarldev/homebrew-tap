class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.3/tsk-darwin-arm64.tar.gz"
      sha256 "5fe812276f1d24c19fc9c3f8a94ee7846e106d5067bbfc906b69cbcfeb1943d0"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.3/tsk-darwin-amd64.tar.gz"
      sha256 "971041d45b311bd7440e7cbac924b1e28f3939652448e3184f925857f759d3ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.3.3/tsk-linux-arm64.tar.gz"
      sha256 "6295d58a34a0b08ae18feacd571ad3b6a2d3d0eff02d883292f743913b419bbc"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.3.3/tsk-linux-amd64.tar.gz"
      sha256 "26a5442f6458ed5f4caa63eb265fbac307a50623c55cda48de1e0b2f957cb0a4"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
