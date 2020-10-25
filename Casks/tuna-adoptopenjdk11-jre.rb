# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk11-jre" do
  version "11.0.9+11"
  sha256 "37d973fdac429dd2ffe2fb468087b84187b1446ff8675a2b25c544c2f2c13056"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/11/jre/x64/mac/OpenJDK11U-jre_x64_mac_hotspot_11.0.9_11.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK11 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK11U-jre_x64_mac_hotspot_11.0.9_11.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.11.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.11.jre"
end