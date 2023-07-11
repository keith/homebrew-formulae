cask 'copyhistory' do
  version '0.1.1'
  sha256 '96b401faef70fce8829248cc072a5b33d02cd84860a0553d1a06a8f07039fe6a'

  url "https://github.com/keith/CopyHistory/releases/download/#{version}/CopyHistory.app.zip"
  livecheck do
    url 'https://github.com/keith/CopyHistory/releases.atom'
    strategy: :sparkle
  end

  name 'CopyHistory'
  desc 'Quickly paste from your copy history'
  homepage 'https://github.com/keith/CopyHistory'

  app 'CopyHistory.app'
end
