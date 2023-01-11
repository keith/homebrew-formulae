class ZshXcodeCompletions < Formula
  desc "Zsh completions for Xcode command-line tools"
  homepage "https://github.com/keith/zsh-xcode-completions/"
  url "https://github.com/keith/zsh-xcode-completions/archive/refs/tags/1.4.0.tar.gz"
  sha256 "47049ce6a55c7e3a91c56a0dc5d884c8a46308a61e325c99e311aa493173d92b"

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
