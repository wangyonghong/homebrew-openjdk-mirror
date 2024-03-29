# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk8" do
  version "1.8.0_332-b09"
  sha256 "593ee377dcac04f0b0098d2018770c07e34ef559f2d71d497231252a986a960a"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_hotspot_8u332b09.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK8"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK8U-jdk_x64_mac_hotspot_8u332b09.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.8.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.8.jdk"
end