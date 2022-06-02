class ZshXcodeCompletions < Formula
  desc "Zsh completions for Xcode command line tools"
  homepage "https://github.com/keith/zsh-xcode-completions/"
  url "https://github.com/keith/zsh-xcode-completions/archive/1.2.1.tar.gz"
  sha256 "ee3676f7bf68a00d18dc027682cb4f7a0befa8b7d393416cf75f3cbfc3d89f0c"

  head "https://github.com/keith/zsh-xcode-completions.git"

  def install
    zsh_completion.install Dir["src/_*"]
  end

  def caveats
    <<~EOS
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
    (testpath/".zshrc").write <<~EOS
      fpath=(#{HOMEBREW_PREFIX}/share/zsh/site-functions $fpath)
      autoload -U compinit
      compinit
    EOS
    system "/bin/zsh", "--login", "-i", "-c", "which _xcodebuild"
  end
end
