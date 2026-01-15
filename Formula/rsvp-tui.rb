class RsvpTui < Formula
  desc "Terminal-based RSVP (Rapid Serial Visual Presentation) speed reader"
  homepage "https://github.com/kearnsw/rsvp"
  url "https://github.com/kearnsw/rsvp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ca255191b72f717a47b660da4ecef04d167da209c8d4079a1046af9537ce248e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rsvp", shell_output("#{bin}/rsvp --help")
  end
end
