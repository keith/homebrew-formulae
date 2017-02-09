Some [Homebrew](http://brew.sh/) formula for distribution or fixes

```
brew tap keith/formulae
```

## formulae

- [circle-cli](https://github.com/keith/circle-cli)
- [contacts-cli](https://github.com/keith/contacts-cli)
- [cycript](http://www.cycript.org/)
- [ghb](https://github.com/keith/ghb)
- [ghu](https://github.com/pbrisbin/ghu) \*
- [gifiate](https://github.com/keith/gifiate)
- [jtool](http://www.newosxbook.com/tools/jtool.html)
- [lunchy](https://github.com/eddiezane/lunchy)
- [marooned](https://github.com/keith/marooned/)
- [mkgpx](https://github.com/keith/mkgpx)
- [pdmpkeys](https://github.com/pdixon/pdmpkeys)
- [pinboard](https://github.com/keith/pinboard)
- [reminders-cli](https://github.com/keith/reminders-cli)
- [swift-doccomment-converter](https://github.com/keith/swift-doccomment-converter)
- [urlview](https://github.com/keith/urlview) \*
- [zap](https://github.com/keith/zap/)
- [zsh-xcode-completions](https://github.com/keith/zsh-xcode-completions)


## notes

### ghu

This is a script for mutt to automatically unsubscribe from emails which
include the `List-Unsubscribe` header. This formula is needed for the
included patch which switches calls of `sed` and `head` to `gsed` and
`ghead` respectively because of incompatibilities in their interfaces.
See [ghu](https://github.com/pbrisbin/ghu)

### urlview

This [urlview](https://github.com/keith/urlview) formula is for my fork
which has pcre regex support.
