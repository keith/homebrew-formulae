cask 'conductor' do
  version '1.5.2'
  sha256 'fc4cdd8963d0de970920400a478ca4cf63ff46664c27305d50d5f1ff675dd4ff'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.zip"

  name 'Conductor'
  desc 'Write JavaScript to automate moving windows with the keyboard'
  homepage 'https://github.com/keith/conductor'

  app 'Conductor.app'
end
