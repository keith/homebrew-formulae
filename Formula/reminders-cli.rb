class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.5.1/reminders.tar.gz"
  sha256 "f37ca92c580c87081d8daa354f42a46c2fa46a5173b6029c45f317d6f67c431c"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
