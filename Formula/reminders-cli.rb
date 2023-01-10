class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.1.1/reminders.tar.gz"
  sha256 "a410775bf6d41077bf3838e377422b9f2744994272b600ebdc5d11074eb8ea06"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
