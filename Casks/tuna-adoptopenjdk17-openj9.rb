# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk17-openj9" do
  version "17.0.1+12"
  sha256 "3ad24cb042713fc3a448a4e113322436906cd2e27e4eb745aedcd3139183cd40"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/17/jdk/x64/mac/ibm-semeru-open-jdk_x64_mac_17.0.1_12_openj9-0.29.1.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK17 (OpenJ9)"
  homepage "https://adoptopenjdk.net/"

  pkg "ibm-semeru-open-jdk_x64_mac_17.0.1_12_openj9-0.29.1.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.17-openj9.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.17-openj9.jdk"
end