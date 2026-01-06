class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "d1b333e82fecb9d1b6847b18515a0d6dad9db566179e198c0b588c2b0cb5f00b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/srl --help")
  end
end
