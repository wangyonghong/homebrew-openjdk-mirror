# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk13-jre" do
  version "13.0.2+8"
  sha256 "06f4f7a1d968e600c134ccc245627d58b1c220086e27408fa0acdaad5d8c7a06"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/13/jre/x64/mac/OpenJDK13U-jre_x64_mac_hotspot_13.0.2_8.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK13 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK13U-jre_x64_mac_hotspot_13.0.2_8.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.13.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.13.jre"
end