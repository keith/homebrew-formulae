class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.2.0/reminders.tar.gz"
  sha256 "3d0147ce505cae63d795e49a2f69f942464a8a704f8ad9c313111871579cd0e0"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
