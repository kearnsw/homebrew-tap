class Fl < Formula
  desc "Anki-style spaced repetition flashcard TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e463e06870f6238390df6b3ef301f9b596940372cf98a8e5becb92bcf7b63931"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/fl --help")
  end
end
