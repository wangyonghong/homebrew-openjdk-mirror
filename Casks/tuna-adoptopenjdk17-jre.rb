# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk17-jre" do
  version "17.0.2+8"
  sha256 "876b13e7384976eab3a2c61704b663b0b86a1a8d456326f4ebd5c04f2f69c42e"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/17/jre/x64/mac/OpenJDK17U-jre_x64_mac_hotspot_17.0.2_8.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK17 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK17U-jre_x64_mac_hotspot_17.0.2_8.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.17.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.17.jre"
end