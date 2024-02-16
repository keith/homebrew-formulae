class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.5.0/reminders.tar.gz"
  sha256 "ea67770c9f2149b87c68c6aaf948f48df01606087b58d0c4883af6e7e74ba7b0"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
