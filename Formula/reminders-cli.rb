class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.1.0/reminders.tar.gz"
  sha256 "991d015473987005f45fc4a8825e6539be6f80ef3eeb2e182ed1451fbab04ec6"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
