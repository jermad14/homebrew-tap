cask "jmeeting" do
  version "0.1.14"
  sha256 "e983bc04ddd4d3811ffb98dc31f3154d349871975370603c75cef00679c5810b"

  url "https://github.com/jermad14/homebrew-tap/releases/download/jmeeting-v#{version}/jmeeting_#{version}_aarch64.dmg"
  
  name "jmeeting"
  desc "AI-powered meeting recorder"
  homepage "https://github.com/jermad14/jmeeting"


  depends_on arch: :arm64
  app "jmeeting.app"

  # Instruction for users to bypass Gatekeeper for this unsigned app
  caveats <<~EOS
    #{token} is not signed with an Apple Developer certificate.
    To open it, you may need to right-click the app in Finder and select "Open",
    or run the following command to remove the quarantine attribute:
      xattr -d com.apple.quarantine "/Applications/#{token}.app"
  EOS
  
  zap trash: [
    "~/Library/Application Support/jmeeting",
    "~/Library/Caches/jmeeting",
    "~/Library/Preferences/com.jmeeting.desktop.plist",
  ]
end
