class Tsk < Formula
  desc "Simple CLI task tracker"
  homepage "https://zarldev.github.io/tsk/"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.0/tsk-darwin-arm64.tar.gz"
      sha256 "6298db0440b3b0e75af22cf2438b488fe0bf3bd5bdd65873e0173435b328a7d3"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.0/tsk-darwin-amd64.tar.gz"
      sha256 "169cfadf03c04dc40d2f9ee135c8bac5a07b370c949845b1728504a912fa30eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zarldev/tsk/releases/download/v0.2.0/tsk-linux-arm64.tar.gz"
      sha256 "9fc8dde5e16172e67f8ca2eeeeb48574d350e3acaf19bc06a40189a85c837f10"
    else
      url "https://github.com/zarldev/tsk/releases/download/v0.2.0/tsk-linux-amd64.tar.gz"
      sha256 "650b9f423475a433ece6fca4d6f13ef48215a30be278e7de81b85749b9fd7240"
    end
  end

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk", shell_output("#{bin}/tsk version")
  end
end
