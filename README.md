# Homebrew Tap for Jermad14

This repository contains Homebrew casks for apps by @jermad14.

## Packages

### jmeeting
AI-powered meeting recorder.

**Installation:**

```bash
brew tap jermad14/tap
brew install --cask jmeeting
```

**Note:** The application is currently unsigned. If you encounter a "developer cannot be verified" error:
1. Right-click the app in Finder and select "Open".
2. Or run: `xattr -d com.apple.quarantine /Applications/jmeeting.app`

## Maintenance (For Maintainer)

To publish a new version of an app, run the release script from the app's repository.
This repository hosts the release artifacts (DMGs) and the Cask definitions.
