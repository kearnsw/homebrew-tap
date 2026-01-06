class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/srl-tui"
  url "https://github.com/kearnsw/srl-tui/archive/refs/tags/v0.8.3.tar.gz"
  sha256 "ace07fb9d709fe48e14a0327c6842b05a03045ebc1bea13962c344ae9235b804"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "srl", shell_output("#{bin}/srl --help")
  end
end
