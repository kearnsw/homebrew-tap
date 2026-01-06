class Srl < Formula
  desc "SRL - Spaced Repetition Learning TUI"
  homepage "https://github.com/kearnsw/srl-tui"
  url "https://github.com/kearnsw/srl-tui/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "656a7d351c9e2f61529b73a7fd28be83f3313c8367f6594bd14bcd793a44b7ed"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "srl", shell_output("#{bin}/srl --help")
  end
end
