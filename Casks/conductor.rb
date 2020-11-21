cask 'conductor' do
  version '1.5.0'
  sha256 '0059f0026cebf1d6354ddadc67ff34ed45df312b25c0b62208c713d3ee7515b0'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom'
  name 'Conductor'
  desc 'Write JavaScript to automate moving windows with the keyboard'
  homepage 'https://github.com/keith/conductor'

  app 'Conductor.app'
end
