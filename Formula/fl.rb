class Fl < Formula
  desc "Anki-style spaced repetition flashcard TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "56f280966f48d510f2b43053d6faad2c2cbf5d2518b610217707914c44213137"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/fl --help")
  end
end
