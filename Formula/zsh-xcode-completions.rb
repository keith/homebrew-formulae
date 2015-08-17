class ZshXcodeCompletions < Formula
  desc "Zsh completions for Xcode command line tools"
  homepage "https://github.com/keith/zsh-xcode-completions/"
  url "https://github.com/keith/zsh-xcode-completions/archive/1.1.0.tar.gz"
  sha256 "1e73ec1207d3db4f465fa49e0d9a6577ac5953703cddcb48264ea1a6ed0a9f94"

  head "https://github.com/keith/zsh-xcode-completions.git"

  def install
    zsh_completion.install Dir["src/_*"]
  end

  def caveats
    <<-EOS.undent
    To activate these completions, add the following to your .zshrc:

      fpath=(#{HOMEBREW_PREFIX}/share/zsh/site-functions $fpath)

    You may also need to force rebuild `zcompdump`:

      rm -f ~/.zcompdump; compinit

    Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
    to load these completions, you may need to run this:

      chmod go-w /usr/local/share
    EOS
  end

  test do
    (testpath/".zshrc").write <<-EOS.undent
      fpath=(#{HOMEBREW_PREFIX}/share/zsh/site-functions $fpath)
      autoload -U compinit
      compinit
    EOS
    system "/bin/zsh", "--login", "-i", "-c", "which _xcodebuild"
  end
end
