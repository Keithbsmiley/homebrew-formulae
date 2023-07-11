cask 'modmove' do
  version '1.1.1'
  sha256 '81b9cd96050b6bffecccb1ec6ef590a4fc0225c86e96de0a67a482b80c241bf7'

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"
  livecheck do
    url 'https://github.com/keith/modmove/releases.atom'
    strategy: :sparkle
  end

  name 'ModMove'
  desc 'Easily move windows with keyboard modifiers'
  homepage 'https://github.com/keith/modmove'

  app 'ModMove.app'
end
