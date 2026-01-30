cask "jmeeting" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/jermad14/homebrew-tap/releases/download/jmeeting-v#{version}/jmeeting_#{version}_aarch64.dmg"
  
  name "jmeeting"
  desc "AI-powered meeting recorder"
  homepage "https://github.com/jermad14/jmeeting"

  auto_updates true
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
