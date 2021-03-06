cask 'etcher' do
  version '1.0.0'
  sha256 '11259ae4a3b36a60092bdf365fd3f54eba854e9f0a88e661d5a7969d26d51fae'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '6c029a234674e2e356cd6973f3eba3f65ca360ef73804c740c1aedcfa99e0a96'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'

  zap delete: [
                '~/Library/Application Support/etcher',
                '~/Library/Preferences/io.resin.etcher.helper.plist',
                '~/Library/Preferences/io.resin.etcher.plist',
                '~/Library/Saved Application State/io.resin.etcher.savedState',
              ]
end
