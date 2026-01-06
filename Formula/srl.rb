class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "aff680d0b58a717b140bec42837cb0798f07ea4259bf23c1f205904a8af952a2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/srl --help")
  end
end
