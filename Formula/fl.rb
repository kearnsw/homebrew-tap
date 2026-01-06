class Fl < Formula
  desc "Anki-style spaced repetition flashcard TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "03f857a84b5225b9611b03802132bedffdf12cff613fe2a73c5fdd5adadd206a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/fl --help")
  end
end
