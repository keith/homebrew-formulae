class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.5.0/reminders.tar.gz"
  sha256 "41c8a6319e358f414061d65e5ab63359898ffee39b529d5fc5f8b9c62b971c7c"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
