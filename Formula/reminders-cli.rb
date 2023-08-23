class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.3.0/reminders.tar.gz"
  sha256 "4384c798c390c38b389d19befaae591b9502b1d4ea3fae991b26319bc4244f83"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
