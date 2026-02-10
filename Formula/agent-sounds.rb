class AgentSounds < Formula
  desc "Completion sounds for Claude Code"
  homepage "https://github.com/kearnsw/agent-sounds"
  url "https://github.com/kearnsw/agent-sounds/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "61a30f1119a629f1daff6fab62894c5adcd43f2c051456cf8438a050fd862b0e"
  license "MIT"

  depends_on "jq"

  def install
    prefix.install "install.sh", "play-random.sh"
  end

  def post_install
    system "bash", "#{prefix}/install.sh"
  end

  def caveats
    <<~EOS
      Core themes (peon, peasant, scv) have been installed.

      For all themes (adds raynor, wraith, duke):
        bash #{prefix}/install.sh --all

      To uninstall sounds and hooks:
        bash #{prefix}/install.sh --uninstall
    EOS
  end

  test do
    assert_match "agent-sounds v#{version}", shell_output("bash #{prefix}/install.sh --version")
  end
end
