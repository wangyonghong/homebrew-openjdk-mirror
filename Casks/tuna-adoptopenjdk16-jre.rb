# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk16-jre" do
  version "16+36"
  sha256 "9caeffca57a6d667aad56e34e6a46f500c3a3456da38c40b83a967c85b07e945"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/16/jre/x64/mac/OpenJDK16-jre_x64_mac_hotspot_16_36.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK16 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK16-jre_x64_mac_hotspot_16_36.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.16.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.16.jre"
end