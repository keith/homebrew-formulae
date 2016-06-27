class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.0.0/reminders.tar.gz"
  sha256 "c6805baa54442f051c7df6239dfe2af4713cfadeda0c206e4b72791140d34216"

  def install
    bin.install "reminders"
  end
end
