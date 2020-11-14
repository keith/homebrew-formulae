class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.3.0/reminders.tar.gz"
  sha256 "9ca91eb5cb841e8cdb9756088ac2794e8d5b66a3d620037419b261eaa9ec3624"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
