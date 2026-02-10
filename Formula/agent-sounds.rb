class AgentSounds < Formula
  desc "Completion sounds for Claude Code"
  homepage "https://github.com/kearnsw/agent-sounds"
  url "https://github.com/kearnsw/agent-sounds/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5c28c971690ec9b67d1a32661ed419c97be0803f41f2dcb267745a4dc0a172f3"
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
