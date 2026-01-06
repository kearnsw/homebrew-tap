class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/srl-tui"
  url "https://github.com/kearnsw/srl-tui/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "ee0c4df25003882d56e17242af6e4b5bbf81b5b3656cd232afedf811b9e8e89b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "srl", shell_output("#{bin}/srl --help")
  end
end
