class Fl < Formula
  desc "Anki-style spaced repetition flashcard TUI"
  homepage "https://github.com/kearnsw/flashcards"
  url "https://github.com/kearnsw/flashcards/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "853d97ab32558bc7cc1ac56984ceff1c3885bac514ffa37e8262ed0f286ddbc8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "flashcards", shell_output("#{bin}/fl --help")
  end
end
