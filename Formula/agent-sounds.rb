class AgentSounds < Formula
  desc "Completion sounds for Claude Code"
  homepage "https://github.com/kearnsw/agent-sounds"
  url "https://github.com/kearnsw/agent-sounds/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "21befe39171d19cbdba9d93b11ab2bd3c25922cc4b563282a4a3986a4493e8e6"
  license "MIT"

  depends_on "jq"

  def install
    prefix.install "install.sh", "play-random.sh"
  end

  def caveats
    <<~EOS
      Run the installer to set up sounds and hooks:
        bash #{prefix}/install.sh          # core themes
        bash #{prefix}/install.sh --all    # all themes

      To uninstall sounds and hooks:
        bash #{prefix}/install.sh --uninstall
    EOS
  end

  test do
    assert_match "agent-sounds v#{version}", shell_output("bash #{prefix}/install.sh --version")
  end
end
