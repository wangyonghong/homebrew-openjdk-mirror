# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk15-jre" do
  version "15.0.1+9"
  sha256 "325ed874e67a5ca8cd56256d033f03740265694f1986b7c25424b86e10ecce2f"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/15/jre/x64/mac/OpenJDK15U-jre_x64_mac_hotspot_15.0.1_9.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK15 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK15U-jre_x64_mac_hotspot_15.0.1_9.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.15.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.15.jre"
end