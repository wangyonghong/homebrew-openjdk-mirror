# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk8-jre" do
  version "1.8.0_282-b08"
  sha256 "dc9494f20c6b36bd1f593c8e6d3feaeafb32a3037d525674812fb7565f5e8968"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jre/x64/mac/OpenJDK8U-jre_x64_mac_hotspot_8u282b08.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK8 (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK8U-jre_x64_mac_hotspot_8u282b08.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.8.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.8.jre"
end