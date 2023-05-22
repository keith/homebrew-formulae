class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.2.0/reminders.tar.gz"
  sha256 "2ccae21a7d812d0655bbaf2e33b9e16e9b5ebb2b56f34e2c0f708eef48ed49e5"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
