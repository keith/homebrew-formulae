class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.0.0/reminders.tar.gz"
  sha256 "2eb6710fcd235916603b9eb49fac6200517e264e726965944622ca11e250b0e0"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
