cask "menubarx" do
  version "1.5.7"
  sha256 "5442f6bbc450cd2aa5d5921c7f7e4d7f07354f7e332a85405473c38c3b15601d"

  url "https://menubarx-1251679148.file.myqcloud.com/download/MenubarX-#{version}.dmg",
      verified: "menubarx-1251679148.file.myqcloud.com/download/"
  name "MenubarX"
  desc "Menu bar browser"
  homepage "https://menubarx.app/"

  livecheck do
    url "https://menubarx.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "MenubarX.app"

  zap trash: [
    "~/Library/Application Scripts/com.app.menubarx",
    "~/Library/Application Scripts/com.app.menubarx-helper",
    "~/Library/Containers/com.app.menubarx",
    "~/Library/Containers/com.app.menubarx-helper",
  ]
end
