# formulae

Some homebrew formula for distribution or fixes

```
brew tap Keithbsmiley/formulae
```

## marooned

See [marooned](https://github.com/Keithbsmiley/marooned/)

## tmux
In tmux 1.9a there was [a
patch](http://sourceforge.net/p/tmux/tickets/97/) that changes the way
navigation works. Instead of going up, down, left, or right it remembers
the last window you were at in a split and it takes you back there.
Personally I find this behavior much more confusing that just navigating
in the direction I've told it. I submitted this as [an
issue](http://sourceforge.net/p/tmux/tickets/122/) and was told it would
be left this way unless a better algorithm was submitted. This edited
homebrew formula patches the source on install removing this changed
behavior. Since the tmux formula exists in the master formula install
with:

```
brew install tmux-move-patch
```

## oclint

This spec is pulled directly from [this
PR](https://github.com/Homebrew/homebrew/pull/28724)

## ghb

See [ghb](https://github.com/Keithbsmiley/ghb)

## CocoaPods

This is a unofficial homebrew installation path for
[CocoaPods](https://github.com/CocoaPods/CocoaPods) which is typically
distributed as a RubyGem. This is manually kept in sync with releases.
