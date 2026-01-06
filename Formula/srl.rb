class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/srl-tui"
  url "https://github.com/kearnsw/srl-tui/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "1d2a10c6b305b2217f03b233172be38901cf1ce3fdf25aecc6bdb038496a119a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "srl", shell_output("#{bin}/srl --help")
  end
end
