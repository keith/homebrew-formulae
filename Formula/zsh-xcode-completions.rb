class ZshXcodeCompletions < Formula
  desc "Zsh completions for Xcode command-line tools"
  homepage "https://github.com/keith/zsh-xcode-completions/"
  url "https://github.com/keith/zsh-xcode-completions/archive/refs/tags/1.6.0.tar.gz"
  sha256 "e539e706a6651ce54dfb77aa2ba381550a2b2562a2a055659dc66828b10b8189"

  head "https://github.com/keith/zsh-xcode-completions.git"

  depends_on "jq"

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

        chmod go-w #{HOMEBREW_PREFIX}/share
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
