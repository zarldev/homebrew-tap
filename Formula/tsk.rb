class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.2/tsk-darwin-arm64.tar.gz"
      sha256 "9f013146534d2f795a2dc11ae6d3f0fee738e49d4cb441a1389ec33123892519"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.2/tsk-darwin-amd64.tar.gz"
      sha256 "4524eb9a0ca6f3f3dc345d913175817b74189a88b22e1bd95bef141b9120a2cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.2/tsk-linux-arm64.tar.gz"
      sha256 "d641d49351b626d541e5d8c8eecf9d3bb87bc503c1edfd9e289ac9abe9db3ffb"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.2/tsk-linux-amd64.tar.gz"
      sha256 "eef29a1831da61ff0ff903a40957145632598784d0bcbe9ff836af3c7a7eb1eb"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
