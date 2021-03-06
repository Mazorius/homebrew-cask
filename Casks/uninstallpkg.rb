cask "uninstallpkg" do
  version "1.1.9"
  sha256 "4815c2c4ce97f1e5768690651efaf2d7a4feec34a446a027cc866ad78b96ac02"

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast "https://www.corecode.io/uninstallpkg/uninstallpkg.xml"
  name "UninstallPKG"
  homepage "https://www.corecode.io/uninstallpkg/"

  depends_on macos: ">= :mojave"

  app "UninstallPKG.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper",
            launchctl: "com.corecode.UninstallPKGDeleteHelper"

  zap trash: [
    "~/Library/Application Support/UninstallPKG",
    "~/Library/Preferences/com.corecode.UninstallPKG.plist",
    "~/Library/Saved Application State/com.corecode.UninstallPKG.savedState",
  ]
end
