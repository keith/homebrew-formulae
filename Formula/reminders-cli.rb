class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.1.1/reminders.tar.gz"
  sha256 "7dddd116b79d76aedde526ec843147e840a79309cfca48960abb7d4ce349fdb2"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
