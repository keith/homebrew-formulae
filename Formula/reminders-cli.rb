class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.0.1/reminders.tar.gz"
  sha256 "909963a8d4bb9d972c32a5cd37746f93b009f4dbab2172c28932f34f5c2c05c0"

  def install
    bin.install "reminders"
  end
end
