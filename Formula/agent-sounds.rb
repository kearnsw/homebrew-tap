class AgentSounds < Formula
  desc "Completion sounds for Claude Code"
  homepage "https://github.com/kearnsw/agent-sounds"
  url "https://github.com/kearnsw/agent-sounds/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4ff30e4a23a7212cd1f692c29de18d0f9ccbbe037c76707be92eb13607f5b3d1"
  license "MIT"

  depends_on "jq"

  def install
    prefix.install "install.sh", "play-sound.sh"
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
