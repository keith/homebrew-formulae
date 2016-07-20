class RemindersCli < Formula
  homepage "https://github.com/keith/reminders-cli"
  url "https://github.com/keith/reminders-cli/releases/download/1.0.2/reminders.tar.gz"
  sha256 "9299512cb02c978e39a72bc94694e11d567af4ca969f5fe13bcca1ff32833d95"

  def install
    bin.install "reminders"
  end
end
