class Fl < Formula
  desc "Anki-style spaced repetition flashcard TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "47df14139ee9a0e9baa0fbee46e491833f0483964cb7cb0972873e3c5483051d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/fl --help")
  end
end
