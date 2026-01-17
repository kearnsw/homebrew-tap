class RsvpTui < Formula
  desc "Terminal-based RSVP (Rapid Serial Visual Presentation) speed reader"
  homepage "https://github.com/kearnsw/rsvp"
  url "https://github.com/kearnsw/rsvp/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "bc2c6bfaa3bbc28b42dbd487af82fe64d3a239d83476eb4c811f643c69dbc844"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--no-default-features", "--features", "tui"
  end

  test do
    assert_match "rsvp", shell_output("#{bin}/rsvp-tui --help")
  end
end
