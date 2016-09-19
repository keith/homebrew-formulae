class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.1.0/reminders.tar.gz"
  sha256 "190819632d40e329710851c397458d9794784dcf3b352d612fd4772ae76dece8"

  def install
    bin.install "reminders"
  end
end
