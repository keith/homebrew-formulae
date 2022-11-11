class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.0.1/reminders.tar.gz"
  sha256 "dc926d96ab5eacd1d1d4b151f37ca44a7608977d4de4283faaa34b5c297ca449"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
