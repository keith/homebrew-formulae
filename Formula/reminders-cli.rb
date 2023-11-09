class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/2.4.0/reminders.tar.gz"
  sha256 "893660268d385f091c6128f8d6e64a4509345a223cde8b74d882cf9de78366df"

  def install
    bin.install "reminders"
    zsh_completion.install "_reminders"
  end
end
