class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/srl-tui"
  url "https://github.com/kearnsw/srl-tui/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "a5ed4362472ed1db52ab0596e8ccdec35a1b78a548e3a58b2bfa306641f3c3b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "srl", shell_output("#{bin}/srl --help")
  end
end
