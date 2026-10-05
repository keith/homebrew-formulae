cask 'modmove' do
  version '1.1.2'
  sha256 '6fd6a9929f0e4c5179275c2fa78443baa779300c53ef91113a651d9bf2b25584'

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"

  name 'ModMove'
  desc 'Easily move windows with keyboard modifiers'
  homepage 'https://github.com/keith/modmove'

  app 'ModMove.app'
end
