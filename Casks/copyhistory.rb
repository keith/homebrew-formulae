cask 'copyhistory' do
  version '0.1.0'
  sha256 '6531a6e4b38a7294e0e8ff699b937edbe82a0bd4f010a07dc5bdf873fd327651'

  url "https://github.com/keith/CopyHistory/releases/download/#{version}/CopyHistory.app.zip"
  appcast 'https://github.com/keith/CopyHistory/releases.atom'
  name 'CopyHistory'
  desc 'Quickly paste from your copy history'
  homepage 'https://github.com/keith/CopyHistory'

  app 'CopyHistory.app'
end
