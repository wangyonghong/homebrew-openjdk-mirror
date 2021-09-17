# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk11-jre" do
  version "11.0.12+7"
  sha256 "f32ae099386d35317c5592b4b2a6467ddf313a998fc51466a800a5e37b221cc8"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/11/jre/x64/mac/OpenJDK11U-jre_x64_mac_hotspot_11.0.12_7.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK11 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK11U-jre_x64_mac_hotspot_11.0.12_7.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.11.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.11.jre"
end